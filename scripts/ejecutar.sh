#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
bash scripts/compilar.sh
java -cp bin presentacion.Main
