#!/usr/bin/bash

sudo pacman -Syyu --noconfirm
pkgs="vi vim"
sudo pacman -S  $pkgsi --needed --noconfirm
pkgs="wezterm kitty alacritty"
sudo pacman -S $pkgs --needed --noconfirm
sudo pacman -S zsh --needed --noconfirm
sudo pacman -S git --needed --noconfirm
sudo pacman -S firefox --needed --noconfirm
sudo pacman -S thunderbird --needed --noconfirm
sudo pacman -S owncloud-client --needed --noconfirm
sudo pacman -S lsd --needed --noconfirm
sudo pacman -S exa --needed --noconfirm
sudo pacman -S nerd-fonts --needed --noconfirm
sudo pacman -S okular --needed --noconfirm
sudo pacman -S element-desktop --needed --noconfirm
sudo pacman -S neofetch --needed --noconfirm
sudo pacman -S mc --needed --noconfirm
sudo pacman -S ksnip --needed --noconfirm
sudo pacman -S fzf --needed --noconfirm
sudo pacman -S tealdeer --needed --noconfirm
sudo pacman -S man --needed --noconfirm
sudo pacman -S code --needed --noconfirm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
