#!/usr/bin/env bash
# Regenerates the root README.md from profile/README.md, the org profile
# source. Pass --check to fail instead of writing when the two differ.
set -euo pipefail
cd "$(dirname "$0")/.."

expected=$(sed 's#\./assets/#./profile/assets/#g' profile/README.md)

if [[ "${1:-}" == "--check" ]]; then
  if ! diff -u README.md <(printf '%s\n' "$expected"); then
    echo "README.md is out of sync with profile/README.md. Run scripts/sync-readme.sh." >&2
    exit 1
  fi
else
  printf '%s\n' "$expected" > README.md
fi
