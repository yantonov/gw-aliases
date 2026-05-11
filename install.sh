#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

# https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script
command -v curl >/dev/null 2>&1 || { echo "I require curl but it's not installed.  Aborting." >&2; exit 1; }

APP_NAME="gw"

curl -fsSL "https://raw.githubusercontent.com/yantonov/alias/master/bin/download.sh" | bash -s -- "${APP_NAME}"
