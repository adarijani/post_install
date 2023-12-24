#!/bin/bash

sudo pacman-mirrors --geoip && sudo pacman -Syyu --noconfirm
pkgs="vi vim"
sudo pacman -S  $pkgs --noconfirm
pkgs="wezterm kitty alacritty"
sudo pacman -S $pkgs --noconfirm


