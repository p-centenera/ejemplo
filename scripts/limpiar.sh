#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
if [[ -d bin ]]; then find bin -type f -name '*.class' -delete; fi
if [[ -d dist ]]; then find dist -maxdepth 1 -type f -name '*.jar' -delete; fi
printf 'Archivos compilados y JAR eliminados.\n'
