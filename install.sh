#!/bin/sh

# Kitty
## Install binary
`curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin dest=~/Applications`

## Link configuration
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf

################################################################
################################################################

# Hammerspoon
## Download latest release from https://github.com/Hammerspoon/hammerspoon/releases/latest and move it to ~/Applications

## Link configuration:
ln -s ~/dotfiles/hammerspoon ~/.hammerspoon

################################################################
################################################################

# Karabiner
## Download latest release from https://karabiner-elements.pqrs.org/ and move it to ~/Applications

## Link configuration:
ln -s ~/dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json

################################################################
################################################################

# ZSH
brew install zsh
chsh -s /usr/local/bin/zsh

################################################################
################################################################

# Oh My ZSH
### ZSH is required!

## Install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## Link configuration
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

## Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

## Link configurations
### In case of ohmyzsh I would recommend to fork my repository and maintain own fork with all changes
ln -s ~/dotfiles/oh-my-zsh/ohmyzsh ~/.oh-my-zsh
ln -s ~/dotfiles/oh-my-zsh/powerlevel10k/.p10k.zsh ~/.p10k.zsh

## Install fzf
brew install fzf

## 
