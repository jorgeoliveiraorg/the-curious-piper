#!/usr/bin/env bash
set -euo pipefail

# Pin Quarto (matches your local version)
QUARTO_VERSION="${QUARTO_VERSION:-1.8.26}"

# Detect Netlify CPU architecture and choose the right Quarto asset
ARCH="$(uname -m)"
case "$ARCH" in
  x86_64) ARCH="amd64" ;;
  arm64|aarch64) ARCH="arm64" ;;
  *) echo "Unsupported arch: $ARCH" ; exit 1 ;;
esac

curl -fsSL \
  "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-${ARCH}.tar.gz" \
  -o quarto.tar.gz

mkdir -p "$HOME/.local/quarto"
tar -xzf quarto.tar.gz -C "$HOME/.local/quarto" --strip-components=1
export PATH="$HOME/.local/quarto/bin:$PATH"

quarto --version
quarto render