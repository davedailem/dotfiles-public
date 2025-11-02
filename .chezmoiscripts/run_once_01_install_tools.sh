#!/usr/bin/env sh

echo "==> Installing tools"
brew install \
    jq \
    yq \
    fzf \
    awscli \
    shfmt \
    tree \
    kubectl \
    k9s \
    helm \
    gh \
    htop \
    pure \
    direnv \
    tfenv \
    ipcalc \
    helm \
    libpq # psql, make sure to 'export PATH="/opt/homebrew/opt/libpq/bin:$PATH"'

brew install --cask \
    aws-vault \
    miniconda \
    visual-studio-code
