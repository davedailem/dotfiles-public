#!/usr/bin/env sh
echo "==> Installing fonts"
brew install --cask \
    font-jetbrains-mono \
    font-jetbrains-mono-nerd-font # emacs fonts

echo "==> Installing emacs & friends"
brew tap d12frosted/emacs-plus
brew install \
    ripgrep \
    fd \
    libvterm \
    libtool \
    ispell \
    coreutils \
    tree-sitter \
    editorconfig \
    markdown \
    direnv \
    shellcheck \
    stylelint \
    prettier \
    jsonrpc-glib \
    aspell \
    js-beautify \
    emacs-plus@30 --with-modern-pen-icon

echo "==> Cloning doom emacs"
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs

echo "==> Installing doom emacs"
git clone git@github.com:davedailem/.doom.d.git ~/.doom.d

echo "==> Installing doom emacs"
~/.config/emacs/bin/doom install
