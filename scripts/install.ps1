param(
    [Parameter(Mandatory = $true)]
    [string]$TargetPath,

    [string]$ProjectName = "MyProject",

    [string]$ProjectType = "software project",

    [switch]$Force
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$templateRoot = Join-Path $repoRoot "template"
$targetRoot = (Resolve-Path -LiteralPath $TargetPath).Path

if (-not (Test-Path $templateRoot)) {
    throw "Template directory not found: $templateRoot"
}

Get-ChildItem -LiteralPath $templateRoot -Recurse -File | ForEach-Object {
    $relativePath = $_.FullName.Substring($templateRoot.Length).TrimStart('\', '/')
    $targetFile = Join-Path $targetRoot $relativePath
    $targetDir = Split-Path -Parent $targetFile

    if ((Test-Path $targetFile) -and (-not $Force)) {
        throw "Refusing to overwrite existing file: $targetFile. Re-run with -Force if intended."
    }

    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

    $text = Get-Content -LiteralPath $_.FullName -Raw -Encoding UTF8
    $text = $text.Replace('{{PROJECT_NAME}}', $ProjectName)
    $text = $text.Replace('{{PROJECT_TYPE}}', $ProjectType)
    $text = $text.Replace('{{TECH_STACK}}', 'TODO')
    $text = $text.Replace('{{VALIDATION_COMMANDS}}', 'TODO')

    [System.IO.File]::WriteAllText($targetFile, $text, [System.Text.UTF8Encoding]::new($false))
}

Write-Output "Installed AI project workflow template into $targetRoot"

