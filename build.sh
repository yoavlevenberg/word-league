#!/usr/bin/env bash
# Builds index.html (a standalone page) from src/word-league.html (the page body).
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="he" dir="rtl">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat src/word-league.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "built index.html"
