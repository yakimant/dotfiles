#!/usr/bin/env bash

ln -fvs $HOME/work/dotfiles/.zshrc $HOME/.zshrc

ln -fvs $HOME/work/dotfiles/bin $HOME/bin

mkdir -p $HOME/.config
ln -fvs $HOME/work/dotfiles/.config/nvim $HOME/.config/nvim
ln -fvs $HOME/work/dotfiles/.config/git $HOME/.config/git
ln -fvs $HOME/work/dotfiles/.config/tmux $HOME/.config/tmux
ln -fvs $HOME/work/dotfiles/.config/zsh $HOME/.config/zsh
ln -fvs $HOME/work/dotfiles/.config/alacritty.toml $HOME/.config/alacritty.toml
ln -fvs $HOME/work/dotfiles/.config/ripgreprc $HOME/.config/ripgreprc
ln -fvs $HOME/work/dotfiles/.config/skhd $HOME/.config/skhd
ln -fvs $HOME/work/dotfiles/.config/yabai $HOME/.config/yabai
ln -fvs $HOME/work/dotfiles/.config/ncdu $HOME/.config/ncdu

#rm -i $HOME/.passage/store
#ln -fvs $HOME/work/secrets $HOME/.passage/store

#ln -fvs /Volumes/supersecrets $HOME/work/supersecrets

#./.macos

ln -fvs $HOME/work/dotfiles/.ssh/config $HOME/.ssh/config
#ln -fvs $HOME/.ssh/id_ed25519_sk_no_touch_24553389 $HOME/.ssh/id_ed25519_sk_no_touch
#ln -fvs $HOME/.ssh/id_ed25519_sk_no_touch_24553389.pub $HOME/.ssh/id_ed25519_sk_no_touch.pub
#ln -fvs $HOME/.ssh/id_ed25519_sk_touch_24553389 $HOME/.ssh/id_ed25519_sk_touch
#ln -fvs $HOME/.ssh/id_ed25519_sk_touch_24553389.pub $HOME/.ssh/id_ed25519_sk_touch.pub

# setup user services
#yabai --install-service
#yabai --start-service
#skhd --install-service
#skhd --start-service

defaults write org.alacritty NSUserKeyEquivalents -dict-add "Quit alacritty" nil
defaults write org.alacritty NSUserKeyEquivalents -dict-add "Hide alacritty" nil
