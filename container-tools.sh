#!/bin/bash

# Remove older versions of Docker and it's dependencies
sudo dnf -y remove docker \
                   docker-client \
                   docker-client-latest \
                   docker-common \
                   docker-latest \
                   docker-latest-logrotate \
                   docker-logrotate \
                   docker-selinux \
                   docker-engine-selinux \
                   docker-engine

# Insure dnf-plugins-core is installed
sudo dnf -y install dnf-plugins-core

# Add the repository for Docker stable
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

# Install Docker CE
sudo dnf -y install docker-ce

# Enable Docker
sudo systemctl enable docker

