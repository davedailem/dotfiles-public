#!/usr/bin/env sh

brew install \
    go gopls gotests gomodifytags gor golangci-lint

go install github.com/x-motemen/gore/cmd/gore@latest # Go REPL
