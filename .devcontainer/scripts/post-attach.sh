#! /usr/bin/env bash

set -euo pipefail

git config --global init.defaultBranch main

if [ ! -d .git ]; then
    git init -b main
fi

git config --global core.longpaths true
git config --global core.autocrlf input
git config --global --add safe.directory "$(pwd)"

GIT_USER_EMAIL="$(git config --get user.email || true)"
GIT_USER_SIGNINGKEY="$(git config --get user.signingkey || true)"

if [ -n "$GIT_USER_EMAIL" ] && [ -n "$GIT_USER_SIGNINGKEY" ]; then
    mkdir -p ~/.config/git
    echo "$GIT_USER_EMAIL ${GIT_USER_SIGNINGKEY#key::}" > ~/.config/git/allowed_signers
    
    git config --global gpg.ssh.allowedSignersFile ~/.config/git/allowed_signers
fi

git config --local core.fileMode false