#!/usr/bin/env bash

if [[ ! -x $(command -v brew) ]]; then
  echo "Installing Homebrew..."
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [[ ! -x $(command -v op) ]]; then
  echo "Installing 1Password..."
  brew install --cask 1password 1password-cli
  # TODO!!!
  # Open 1Password, sign in all necessary accounts and don't forget
  # to enable the 1Password CLI in the settings under "Developer"...
fi

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Installing Oh My Zsh..."
  bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
