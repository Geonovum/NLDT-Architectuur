#!/bin/bash

set -e

TEMPLATE_REPO="Geonovum/NL-ReSpec-GN-template"
LOCAL_GITHUB_DIR="/Users/matthijshovestad/workspace/geonovum/NL-ReSpec-template/.github"
TMP_DIR="/tmp/template-update-$(date +%s)"
mkdir -p "$TMP_DIR"

echo "🔍 Zoeken naar repositories gebaseerd op: $TEMPLATE_REPO"
REPOS=$(gh repo list Geonovum --json name,templateRepository --jq ".[] | select(.templateRepository.name == \"NL-ReSpec-GN-template\") | .name")

if [[ -z "$REPOS" ]]; then
  echo "⚠️ Geen afgeleide repositories gevonden."
  exit 1
fi

for REPO in $REPOS; do
  echo "➡️ Verwerken van repo: $REPO"
  REPO_DIR="$TMP_DIR/$REPO"
  git clone "git@github.com:Geonovum/$REPO.git" "$REPO_DIR"
  cd "$REPO_DIR"

  BRANCHES=$(git branch -r | grep -v '\->' | sed 's|origin/||' | uniq)

  for BRANCH in $BRANCHES; do
    echo "🔁 Branch: $BRANCH"
    git checkout "$BRANCH"

    echo "🧹 Oude .github folder verwijderen"
    rm -rf .github
    cp -r "$LOCAL_GITHUB_DIR" .github

    # README melding toevoegen
    README_NOTICE=$(cat <<'EOF'
⚠️ Deze repository is automatisch bijgewerkt naar de nieuwste workflow.
Voor vragen, neem contact op met [Linda van den Brink](mailto:l.vandenbrink@geonovum.nl) of [Wilko Quak](mailto:w.quak@geonovum.nl).

Als je een nieuwe publicatie wilt starten, lees dan eerst de instructies in de README van de NL-ReSpec-template:
[https://github.com/Geonovum/NL-ReSpec-template](https://github.com/Geonovum/NL-ReSpec-template).
EOF
    )

    if [[ -f "README.md" ]]; then
      if ! grep -q "automatisch bijgewerkt naar de nieuwste workflow" README.md; then
        echo -e "$README_NOTICE\n\n$(cat README.md)" > README.md
        echo "📘 README.md aangepast."
      else
        echo "📘 README.md bevat al de melding."
      fi
    else
      echo -e "$README_NOTICE" > README.md
      echo "📘 README.md aangemaakt."
    fi

    git add .github README.md
    git commit -m "Update .github workflows en README instructies" || echo "🔹 Niets om te committen"
    git push origin "$BRANCH"
  done
done

echo "✅ Klaar. Alles bijgewerkt in $TMP_DIR"
