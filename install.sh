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

################################################################
################################################################

## Install fzf
brew install fzf

################################################################
################################################################

## Tmux
### Install
brew install tmux

### Link configuration
ln -s ~/dotfiles/tmux/.tmux.reset.conf ~/.tmux.reset.conf
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf

################################################################
################################################################

## Marker
git clone --depth=1 https://github.com/pindexis/marker ~/.marker && ~/.marker/install.py

### Link saved commands
ln -s ~/dotfiles/marker/marker_user_commands.txt ~/.local/share/marker/user_commands.txt

################################################################
################################################################

## Boom
### Probably it should be installed differently, but it works for me: https://www.moncefbelyamani.com/why-you-shouldn-t-use-the-system-ruby-to-install-gems-on-a-mac/
gem install boom

################################################################
################################################################

## fd
brew install fd

################################################################
################################################################

## ag
brew install the_silver_searcher

################################################################
################################################################

## sd
brew install sd

################################################################
################################################################

## jq
brew install jq

################################################################
################################################################

## Git (should be preinstalled on macos)
ln -s ~/dotfiles/git/.git-template ~/.git-template
ln -s ~/dotfiles/git/.gitconfig ~/.gitconfig

################################################################
################################################################

## Copyq
brew install copyq
### Link configuration:
ln -s ~/dotfiles/copyq/ ~/.config/

################################################################
################################################################

## htop
brew install htop

################################################################
################################################################

## Httpie
brew install httpie

################################################################
################################################################

## Yabai
brew install koekeishiya/formulae/yabai
ln -s ~/dotfiles/yabai/.yabairc ~/.yabairc
chmod +x ~/dotfiles/yabai/.yabairc

################################################################
################################################################

## skhd
brew install koekeishiya/formulae/skhd
ln -s ~/dotfiles/skhd/skhd ~/.config

################################################################
################################################################

## Spectacles
# Download manually https://www.spectacleapp.com/
ln -s ~/dotfiles/spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json

## Bartib
# Download manually https://www.spectacleapp.com/
brew install bartib
