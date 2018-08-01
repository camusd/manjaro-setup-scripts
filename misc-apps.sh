#!/bin/bash

# Install spofify
yay -S spotify-stable --noconfirm --needed

# Create symlinks for spotify
sudo ln -s /usr/lib/libnss3.so /usr/lib/libnss3.so.1d && sudo ln -s /usr/lib/libnssutil3.so /usr/lib/libnssutil3.so.1d && sudo ln -s /usr/lib/libsmime3.so /usr/lib/libsmime3.so.1d && sudo ln -s /usr/lib/libssl3.so /usr/lib/libssl3.so.1d && sudo ln -s /usr/lib/libplds4.so /usr/lib/libplds4.so.0d && sudo ln -s /usr/lib/libplc4.so /usr/lib/libplc4.so.0d && sudo ln -s /usr/lib/libnspr4.so /usr/lib/libnspr4.so.0d && sudo ln -s /usr/lib/libudev.so /usr/lib/libudev.so.0

# Install cowsay
yay -S cowsay --noconfirm --needed

# Install fortune
yay -S fortune-mod --noconfirm --needed

