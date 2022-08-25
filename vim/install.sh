#!/bin/sh

## Just create symlinks:
ln -s ~/dotfiles/vim/.vim ~/.vim
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc

## Language server needed for Kotlin and Groovy in YouCompleteMe
ln -s ~/dotfiles/vim/.lsp ~/.lsp
