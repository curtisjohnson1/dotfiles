#!/bin/bash

# https://github.com/nvm-sh/nvm#installing-and-updating

echo "📦 Installing nvm"
export NVM_DIR="$HOME/.nvm" && (
  git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
  cd "$NVM_DIR"
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

source ~/.bashrc

# Get the latest node version and use it
nvm install node --lts
nvm install-latest-npm
nvm alias default node
nvm use default

echo "Now running Node version - $(node --version)"