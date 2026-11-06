$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$src = Join-Path $root 'src'
$bin = Join-Path $root 'bin'
New-Item -ItemType Directory -Force -Path $bin | Out-Null
$files = @(Get-ChildItem -LiteralPath $src -Recurse -File -Filter '*.java' | ForEach-Object { $_.FullName })
if ($files.Count -eq 0) { Write-Error 'No se encontraron archivos Java en src.'; exit 1 }
# Pasar las rutas como argumentos individuales: sin archivo @args, sin problemas de BOM o escapes.
& javac -encoding UTF-8 -g -d $bin @files
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
Write-Host 'Compilacion completada.'
exit 0
