#!/usr/bin/env bash

# Generate bi-icons.yml from Bootstrap Icons SVGs in vendored Hugo module
# Format: - bi {icon-name}
# Note: Run 'hugo mod vendor' first to ensure _vendor directory is up to date

VENDOR_PATH="_vendor/github.com/twbs/icons/icons"

if [ ! -d "$VENDOR_PATH" ]; then
  echo "Error: Vendored Bootstrap Icons not found at $VENDOR_PATH"
  echo "Run 'hugo mod vendor' first to vendor the module"
  exit 1
fi

find "$VENDOR_PATH" -name "*.svg" -exec basename {} .svg \; | \
  awk '{print "- bi " $0}' | \
  sort > data/bi-icons.yml

echo "Generated data/bi-icons.yml with $(wc -l < data/bi-icons.yml) icons"
