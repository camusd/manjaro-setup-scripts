#!/bin/bash

# Install base-devel
pacman -S base-devel --noconfirm --needed

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Install terminator
yay -S terminator --noconfirm --needed

# Install vim
yay -S gvim --noconfirm --needed

# Setup vim config
get clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install oh-my-zsh
yay -S oh-my-zsh-git --noconfirm --needed

# Set zsh as default
chsh -s /usr/bin/zsh

# Install vscode
yay -S visual-studio-code-bin --noconfirm --needed

# Install htop
yay -S htop --noconfirm --needed

# Install concourse fly cli
yay -S concourse-fly --noconfirm --needed

# Install Docker
yay -S docker --noconfirm --needed

# Install Docker-Compose
yay -S docker-compose --noconfirm --needed

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Install minikube
yay -S minikube --noconfirm --needed
