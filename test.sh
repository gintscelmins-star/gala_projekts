#!/bin/bash

set -e

echo "▸ Sāk testus..."

# Tests 1: index.html eksistē
if [ ! -f "index.html" ]; then
  echo "KĻŪDA: index.html nav atrasts"
  exit 1
fi
echo "  [OK] index.html eksistē"

# Tests 2: satur <h1>
if ! grep -q "<h1>" index.html; then
  echo "KĻŪDA: index.html nesatur <h1>"
  exit 1
fi
echo "  [OK] index.html satur <h1>"

# Tests 3: Dockerfile eksistē
if [ ! -f "Dockerfile" ]; then
  echo "KĻŪDA: Dockerfile nav atrasts"
  exit 1
fi
echo "  [OK] Dockerfile eksistē"

# Tests 4: Dockerfile izmanto nginx
if ! grep -q "nginx" Dockerfile; then
  echo "KĻŪDA: Dockerfile neizmanto nginx"
  exit 1
fi
echo "  [OK] Dockerfile izmanto nginx"

echo ""
echo "✓ Visi testi veiksmīgi"