#!/usr/bin/env bash

set -euo pipefail

echo "Installing..."

VSCODE="$HOME/Applications/VSCode-darwin-universal.zip"
HOMEBREW="/opt/homebrew"

if [ "$(uname)" == "Darwin" ]; then
    if [ ! -e "$VSCODE" ]; then
        curl -L "https://update.code.visualstudio.com/latest/darwin/stable" -o vscode.zip
        unzip vscode.zip
        mv Visual\ Studio\ Code.app /Applications
        rm vscode.zip
    else
        echo "Already downloaded VSCode"
    fi 

    if [ ! e "$HOMEBREW" ]; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else   
        echo "Already downloaded Homebrew"
    fi

    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    nvm install node
    npm install --global yarn
    brew install git
    brew install gh
    brew install thefuck
    npm install cypress
fi