#!/usr/bin/env bash

ln -fs $HOME/work/dotfiles/.alacritty.toml $HOME/.alacritty.toml
ln -fs $HOME/work/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -fs $HOME/work/dotfiles/.zshrc $HOME/.zshrc
ln -fs $HOME/work/dotfiles/.zsh $HOME/.zsh
ln -fs $HOME/work/dotfiles/.gitconfig $HOME/.gitconfig
ln -fs $HOME/work/dotfiles/.gitignore $HOME/.gitignore

mkdir -p $HOME/.config
ln -fs $HOME/work/dotfiles/.config/nvim $HOME/.config/nvim

ln -fs $HOME/work/secrets $HOME/.passage/store

#./.macos

ln -fs $HOME/.ssh/id_ed25519_sk_no_touch_24553389 $HOME/.ssh/id_ed25519_sk_no_touch
ln -fs $HOME/.ssh/id_ed25519_sk_no_touch_24553389.pub $HOME/.ssh/id_ed25519_sk_no_touch.pub
ln -fs $HOME/.ssh/id_ed25519_sk_touch_24553389 $HOME/.ssh/id_ed25519_sk_touch
ln -fs $HOME/.ssh/id_ed25519_sk_touch_24553389.pub $HOME/.ssh/id_ed25519_sk_touch.pub
