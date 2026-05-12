#!/usr/bin/env bash

if [[ ! -x $(command -v brew) ]]; then
  echo "Installing Homebrew..."
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [[ ! -x $(command -v op) ]]; then
  echo "Installing 1Password CLI..."
  brew install --cask "1password-cli"
fi

if [[ ! -d ~/.oh-my-zsh ]]; then
  echo "Installing Oh My Zsh..."
  bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
