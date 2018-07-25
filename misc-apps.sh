#!/bin/bash

# Install snapd
sudo dnf -y install snapd

# Create symbolic link for snap
sudo ln -s /var/lib/snapd/snap /snap

# Install spofify
snap install spotify

