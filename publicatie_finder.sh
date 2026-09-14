#!/bin/bash
# export GITHUB_APP_ID=Iv23liNmsnNYMXNZRLhL
# export GITHUB_APP_PRIVATE_KEY_PATH=/Users/matthijshovestad/Downloads/docs-geostandaarden-nl-auth.2026-02-09.private-key.pem

set -euo pipefail
IFS=$'\n\t'

ORG="Geonovum"
LOCAL_GITHUB_DIR="$PWD/.github"
TMP_DIR="/tmp/repos"
PER_PAGE=100
PAGE=1
SELF_REPO="$(basename "$PWD")"
MANAGED_FILES=(
  "dependabot.yml"
  "workflows/build.yml"
  "workflows/main.yml"
  "workflows/pdf.js"
  "workflows/publish.yml"
)

: "${GITHUB_APP_ID:?Zet GITHUB_APP_ID (numerieke App ID)}"

if [[ -n "${GITHUB_APP_PRIVATE_KEY:-}" ]]; then
  KEY_FILE="$(mktemp)"
  printf '%s\n' "$GITHUB_APP_PRIVATE_KEY" > "$KEY_FILE"
  trap 'rm -f "$KEY_FILE"' EXIT
elif [[ -n "${GITHUB_APP_PRIVATE_KEY_PATH:-}" ]]; then
  KEY_FILE="$GITHUB_APP_PRIVATE_KEY_PATH"
else
  echo >&2 "Zet GITHUB_APP_PRIVATE_KEY of GITHUB_APP_PRIVATE_KEY_PATH"
  exit 1
fi

require_cmd() {
  command -v "$1" >/dev/null 2>&1 || { echo >&2 "$1 is vereist, installeer het eerst."; exit 1; }
}

require_cmd jq
require_cmd openssl
require_cmd curl
require_cmd git

sync_managed_github_files() {
  local repo_dir="$1"
  local rel_path

  for rel_path in "${MANAGED_FILES[@]}"; do
    mkdir -p "$repo_dir/$(dirname ".github/$rel_path")"
    cp "$LOCAL_GITHUB_DIR/$rel_path" "$repo_dir/.github/$rel_path"
  done
}

base64url() {
  openssl base64 -e -A | tr '+/' '-_' | tr -d '='
}

create_jwt() {
  local now iat exp header payload header_b64 payload_b64 unsigned signature
  now=$(date +%s)
  iat=$((now - 60))
  exp=$((now + 540))
  header='{"alg":"RS256","typ":"JWT"}'
  payload=$(printf '{"iat":%s,"exp":%s,"iss":"%s"}' "$iat" "$exp" "$GITHUB_APP_ID")
  header_b64=$(printf '%s' "$header" | base64url)
  payload_b64=$(printf '%s' "$payload" | base64url)
  unsigned="$header_b64.$payload_b64"
  signature=$(printf '%s' "$unsigned" | openssl dgst -binary -sha256 -sign "$KEY_FILE" | base64url)
  printf '%s.%s' "$unsigned" "$signature"
}

TOKEN=""
TOKEN_CREATED_AT=0

refresh_token() {
  local jwt installation_id response
  jwt=$(create_jwt)

  installation_id=$(
    curl -sS \
      -H "Authorization: Bearer $jwt" \
      -H "Accept: application/vnd.github+json" \
      "https://api.github.com/orgs/${ORG}/installation" \
      | jq -r '.id'
  )

  if [[ -z "$installation_id" || "$installation_id" == "null" ]]; then
    echo >&2 "Kon installatie-id niet vinden. Is de App geinstalleerd op org ${ORG}?"
    exit 1
  fi

  response=$(
    curl -sS -X POST \
      -H "Authorization: Bearer $jwt" \
      -H "Accept: application/vnd.github+json" \
      "https://api.github.com/app/installations/${installation_id}/access_tokens"
  )

  TOKEN=$(echo "$response" | jq -r '.token')
  if [[ -z "$TOKEN" || "$TOKEN" == "null" ]]; then
    echo >&2 "Kon geen installatie token ophalen."
    echo >&2 "Response: $response"
    exit 1
  fi

  TOKEN_CREATED_AT=$(date +%s)
}

ensure_token() {
  local now
  now=$(date +%s)
  if [[ -z "$TOKEN" || "$TOKEN_CREATED_AT" -eq 0 || $((now - TOKEN_CREATED_AT)) -gt 2700 ]]; then
    refresh_token
  fi
}

git_auth() {
  ensure_token
  local basic_auth
  basic_auth=$(printf 'x-access-token:%s' "$TOKEN" | openssl base64 -A)
  git -c http.extraHeader="Authorization: Basic $basic_auth" "$@"
}

# Maak tijdelijke map aan
mkdir -p "$TMP_DIR"

echo "✅ Repositories met js/config.js worden bijgewerkt:"

while true; do
  ensure_token
  RESP=$(curl -sS \
    -H "Authorization: Bearer $TOKEN" \
    -H "Accept: application/vnd.github+json" \
    "https://api.github.com/installation/repositories?per_page=${PER_PAGE}&page=${PAGE}")

  REPO_COUNT=$(echo "$RESP" | jq '.repositories | length')
  [ "$REPO_COUNT" -eq 0 ] && break

  REPOS=$(echo "$RESP" | jq -r --arg org "$ORG" \
    '.repositories[] | select(.owner.login==$org) | .name')

  for REPO in $REPOS; do
    if [[ "$REPO" == "$SELF_REPO" ]]; then
      echo "⏩ Template repo overgeslagen: $ORG/$REPO"
      continue
    fi

    ensure_token
    STATUS=$(curl -sS -o /dev/null -w "%{http_code}" \
      -H "Authorization: Bearer $TOKEN" \
      -H "Accept: application/vnd.github+json" \
      "https://api.github.com/repos/${ORG}/${REPO}/contents/js/config.js")

    if [ "$STATUS" = "200" ]; then
      echo "➡️ Verwerken van repo: $REPO"

      REPO_DIR="$TMP_DIR/$REPO"
      if [[ -d "$REPO_DIR/.git" ]]; then
        git_auth -C "$REPO_DIR" fetch --all --prune
      else
        rm -rf "$REPO_DIR"
        git_auth clone "https://github.com/${ORG}/${REPO}.git" "$REPO_DIR" || continue
      fi
      cd "$REPO_DIR"

      BRANCHES=$(git for-each-ref --format='%(refname:short)' refs/remotes/origin \
        | sed 's|^origin/||' \
        | grep -v -e '^HEAD$' -e '^origin$' \
        | sort -u)

      for BRANCH in $BRANCHES; do
        echo "🔁 Branch: $BRANCH"
        git reset --hard
        git clean -fd

        if git show-ref --verify --quiet "refs/heads/$BRANCH"; then
          git checkout "$BRANCH"
        else
          git checkout -b "$BRANCH" "origin/$BRANCH"
        fi

        # Zorg dat we up-to-date zijn (geen non-fast-forward push)
        if ! git_auth -C "$REPO_DIR" pull --ff-only origin "$BRANCH"; then
          echo "⚠️ Branch $BRANCH kan niet fast-forwarden; sla over."
          continue
        fi

        echo "🧹 Beheerde .github bestanden bijwerken"
        sync_managed_github_files "$REPO_DIR"
        find .github -name '.DS_Store' -delete

        # Voeg README-notice toe
        NOTICE=$'\n⚠️ Deze repository is automatisch bijgewerkt naar de nieuwste workflow.\nVoor vragen, neem contact op met [Linda van den Brink](mailto:l.vandenbrink@geonovum.nl) of [Wilko Quak](mailto:w.quak@geonovum.nl).\n\nAls je een nieuwe publicatie wilt starten, lees dan eerst de instructies in de README van de NL-ReSpec-template:\n[https://github.com/Geonovum/NL-ReSpec-template](https://github.com/Geonovum/NL-ReSpec-template).\n'

        if [[ -f "README.md" ]]; then
          if ! grep -q "automatisch bijgewerkt naar de nieuwste workflow" README.md; then
            echo -e "$NOTICE\n\n$(cat README.md)" > README.md
            echo "📘 README.md aangepast."
          else
            echo "📘 README.md bevat al de melding."
          fi
        else
          echo -e "$NOTICE" > README.md
          echo "📘 README.md aangemaakt."
        fi

        GIT_ADD_PATHS=("README.md")
        for MANAGED_FILE in "${MANAGED_FILES[@]}"; do
          GIT_ADD_PATHS+=(".github/$MANAGED_FILE")
        done

        git add -- "${GIT_ADD_PATHS[@]}"
        if git diff --staged --quiet; then
          echo "🔹 Geen wijzigingen om te committen"
          continue
        fi

        git commit -m "Update .github workflows en README instructies"
        git_auth push origin "$BRANCH"
      done
    fi
  done

  PAGE=$((PAGE + 1))
done
