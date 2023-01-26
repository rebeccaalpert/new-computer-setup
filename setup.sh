#!/usr/bin/env bash

set -euo pipefail

echo "Installing..."

if [ "$(uname)" == "Darwin" ]; then
    # install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    npm install --global yarn
    brew install git
    brew install thefuck
fi