#!/usr/bin/env sh

echo "==> Initializing miniconda"
conda init zsh
conda activate base || true
