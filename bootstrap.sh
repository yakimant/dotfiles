#!/usr/bin/env bash

ln -fs $HOME/work/dotfiles/.alacritty.toml $HOME/.alacritty.toml
ln -fs $HOME/work/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -fs $HOME/work/dotfiles/.zshrc $HOME/.zshrc

mkdir -p $HOME/.config
ln -fs $HOME/work/dotfiles/.config/nvim $HOME/.config/nvim

#./.macos
