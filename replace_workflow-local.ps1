$ErrorActionPreference = "Stop"

$TEMPLATE_REPO = "https://github.com/Geonovum/NL-ReSpec-template"
$TEMP_DIR = "NL-ReSpec-template-temp"

if (Test-Path $TEMP_DIR) {
    Write-Host "Opruimen oude template directory..."
    Remove-Item -Recurse -Force $TEMP_DIR
}

Write-Host "Clonen van NL-ReSpec-template..."
git clone $TEMPLATE_REPO $TEMP_DIR

if (-not (Test-Path $TEMP_DIR)) {
    throw "Het clonen van NL-ReSpec-template is mislukt."
}

Write-Host "Ophalen van remote branches..."
git fetch --all | Out-Null
$branches = git branch -r | Where-Object { $_ -notmatch "->" } | ForEach-Object { ($_ -replace "^origin/", "").Trim() } | Sort-Object -Unique

foreach ($branch in $branches) {
    Write-Host ""
    Write-Host "Verwerken van branch: $branch"
	if (-not (git branch --list $branch)) {
		git checkout -b $branch origin/$branch
	} else {
		git checkout $branch
		git pull origin $branch | Out-Null
	}

    Write-Host "Vervangen van .github/workflows..."
    Remove-Item -Recurse -Force ".github/workflows" -ErrorAction SilentlyContinue
    if (-not (Test-Path ".github")) { New-Item ".github" -ItemType Directory | Out-Null }
    Copy-Item -Recurse "$TEMP_DIR/.github/workflows" ".github/"

    $readmePath = "README.md"
    $noticeText = @"
Deze repository is automatisch bijgewerkt naar de nieuwste workflow.
Voor vragen, neem contact op met [Linda van den Brink](mailto:l.vandenbrink@geonovum.nl) of [Wilko Quak](mailto:w.quak@geonovum.nl).

Als je een nieuwe publicatie wilt starten, lees dan eerst de instructies in de README van de NL-ReSpec-template:
[https://github.com/Geonovum/NL-ReSpec-template](https://github.com/Geonovum/NL-ReSpec-template).
"@

    $readmeNeedsUpdate = $true
    if (Test-Path $readmePath) {
        $content = Get-Content $readmePath -Raw
        if ($content -match "automatisch bijgewerkt naar de nieuwste workflow") {
            $readmeNeedsUpdate = $false
            Write-Host "README.md bevat al de melding."
        }
    }

    if ($readmeNeedsUpdate) {
        if (-not (Test-Path $readmePath)) {
            Write-Host "README.md aangemaakt."
            Set-Content $readmePath $noticeText
        } else {
            Write-Host "README.md aangepast."
            $existing = Get-Content $readmePath -Raw
            Set-Content $readmePath "$noticeText`r`n`r`n$existing"
        }
    }

    $changes = git status --porcelain
    if ($changes) {
        git add .github/workflows README.md
        git commit -m "Update workflows en README vanuit NL-ReSpec-template"
        git push
        Write-Host "Branch '$branch' bijgewerkt en gepusht."
    } else {
        Write-Host "⏭️ Geen wijzigingen in branch '$branch'."
    }
}

Write-Host "Opruimen tijdelijke map..."
Remove-Item -Recurse -Force $TEMP_DIR

git checkout main | Out-Null
Write-Host ""
Write-Host "Alle branches zijn verwerkt en bijgewerkt."
