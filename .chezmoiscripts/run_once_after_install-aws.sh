#!/usr/bin/env bash

source "${CHEZMOI_SOURCE_DIR}/.chezmoi.lib.sh"

if [[ ! -f /usr/local/bin/aws ]]; then
  step "Creating symlink for AWS CLI"
  sudo ln -s "$(brew --prefix)/bin/aws" /usr/local/bin/aws
fi
