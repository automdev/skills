#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$root/dist"
rm -f "$root/dist/autom-skills.zip"
(cd "$root" && zip -r "dist/autom-skills.zip" skills)
echo "Wrote $root/dist/autom-skills.zip"
