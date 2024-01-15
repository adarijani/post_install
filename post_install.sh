#!/usr/bin/bash

# pacman stuff
sudo pacman-mirrors --geoip && sudo pacman -Syyu --noconfirm
sudo pacman -S base-devel --needed --noconfirm

cli_text_editors="vi vim"
sudo pacman -S $cli_text_editors --needed --noconfirm
terminal_emulators="wezterm kitty alacritty"
sudo pacman -S $terminal_emulators --needed --noconfirm
sudo pacman -S zsh --needed --noconfirm
sudo pacman -S git --needed --noconfirm
sudo pacman -S firefox --needed --noconfirm
sudo pacman -S thunderbird --needed --noconfirm
sudo pacman -S owncloud-client --needed --noconfirm
sudo pacman -S lsd --needed --noconfirm
sudo pacman -S eza --needed --noconfirm

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
sudo pacman -S docker --needed --noconfirm

# AUR stuff
sudo sed -Ei '/EnableAUR/s/^#//' /etc/pamac.conf
sudo pamac upgrade --no-confirm
sudo pamac install visual-studio-code-bin --no-confirm
sudo pamac install zoom --no-confirm
sudo pamac install teams --no-confirm
sudo pamac install autojump --no-confirm

# installing visual studio code extensions
code --install-extension yzhang.markdown-all-in-one
if [ -d ~/.oh-my-zsh ]; then
    echo "The oh-my-zsh is probably already installed..."
else
    echo "The oh-my-zsh is probably not installed...installing it now..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    echo "The zsh-syntax-highlighting is probably already installed..."
else
    echo "The zsh-syntax-highlighting is probably not installed...installing it now"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi
