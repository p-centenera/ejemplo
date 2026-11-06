#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p bin
files=()
while IFS= read -r -d '' file; do files+=("$file"); done < <(find src -type f -name '*.java' -print0)
if (( ${#files[@]} == 0 )); then echo 'No se encontraron archivos Java en src.' >&2; exit 1; fi
javac -encoding UTF-8 -g -d bin "${files[@]}"
printf 'Compilacion completada.\n'
