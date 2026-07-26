#! /usr/bin/env bash

set -euo pipefail

sudo mkdir -p "$HOME/.local/share/pnpm/bin"
sudo chown -R node:node "$HOME/.local/share/pnpm"

sudo corepack enable

if ! grep -q '"packageManager"' package.json 2>/dev/null; then
    corepack use pnpm@11.17.0
fi

pnpm config set store-dir pnpm_modules --location=project

pnpm install