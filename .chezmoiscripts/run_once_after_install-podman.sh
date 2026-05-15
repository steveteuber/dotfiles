#!/usr/bin/env bash

if [[ ! -f /Library/LaunchDaemons/com.github.containers.podman.helper-$USER.plist ]]; then
  echo "Installing Podman helper..."
  sudo podman-mac-helper install
fi

if [[ ! $(podman machine ls -q) ]]; then
  echo "Creating Podman machine..."
  podman machine init -v /Users:/Users --rootful
  podman machine start
  podman machine ssh "sudo sed -i 's/SELINUX=enforcing/SELINUX=permissive/' /etc/selinux/config"
  podman machine stop
fi
