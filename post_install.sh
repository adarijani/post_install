#!/usr/bin/bash

# cleaning Downloads, Desktop and Trash

sudo rm -rf ~/Desktop/*
sudo rm -rf ~/Downloads/*
sudo rm -rf ~/.local/share/Trash/*
# system maintenance

sudo find ~/.cache/ -type f -atime +10 -delete
sudo  journalctl --vacuum-time=0
sudo rm -rf /var/log/*

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
sudo pacman -S docker --needed --noconfirm
sudo pacman -S yt-dlp --needed --noconfirm
sudo pacman -S cmake --needed --noconfirm
sudo pacman -S steam --needed --noconfirm
sudo pacman -S discord --needed --noconfirm

# AUR stuff
paru -S visual-studio-code-bin --needed --noconfirm
paru -S zoom --needed --noconfirm
paru -S autojump --needed --noconfirm

# \LaTeX stuff
sudo /usr/local/texlive/2024/bin/x86_64-linux/tlmgr --self update
sudo /usr/local/texlive/2024/bin/x86_64-linux/tlmgr --all update


# installing visual studio code extensions
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension ms-vscode.remote-repositories
code --install-extension James-Yu.latex-workshop
code --install-extension yzhang.markdown-all-in-one
code --install-extension vscodevim.vim
code --install-extension ms-python.python

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
