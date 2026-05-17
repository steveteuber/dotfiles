#!/usr/bin/env bash

source "${CHEZMOI_SOURCE_DIR}/.chezmoi.lib.sh"

if [[ ! -f /Library/LaunchDaemons/com.github.containers.podman.helper-$USER.plist ]]; then
  step "Installing Podman helper..."
  sudo podman-mac-helper install
fi

if [[ ! $(podman machine ls -q) ]]; then
  step "Creating Podman machine..."
  podman machine init -v /Users:/Users --rootful
  podman machine start
  podman machine ssh "sed -i 's/^SELINUX=.*/SELINUX=permissive/' /etc/selinux/config"
  podman machine stop
fi
