WIP

TODO:
- vim
- bash/zsh
- git
- osx/brew
- ctags
- status sync code
- cold turkey sync

Setup:

0. Link configs
1. macOS Manual
  - `sudo softwareupdate --install-rosetta`
  - keyboard, touchbar, accessibility wallpaper
  - FileVault
2. Brew
  - Install brew
  - brew bundle instll
3. Alacritty: `ln -s /Users/Shared/dotfiles/.alacritty.yml .`
4. Tmux
   1. `ln -s /Users/Shared/dotfiles/.tmux.conf .`
   2. Tmux TPM
      1. `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
      2. `tmux source ~/.tmux.conf`
      3. Install plugins: `prefix` + `I`
5. SSH + GPG
   1. Copy keys
7. asdf
  - git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
  - `cut -d' ' -f1 ~/.tool-versions | xargs -I{} asdf plugin add {}`
  - `asdf install`
8. nix
  - https://nixos.org/manual/nix/stable/installation/installation.html
  - $ bash <(curl -L https://nixos.org/nix/install) --daemon
10. Mail, contacts, calendar (+personal), drive
11. 1pass, bit warden, discord, status
	- https://status.im/get/
12. Web
  - Firefox sync
  - google, GitHub
13. Setup
  - Cold Turkey
  - Sublime
    - Install package control
    - ln -s "/Users/status/work/dotfiles/.sublime/Package Control.sublime-settings" "/Users/status/Library/Application Support/Sublime Text/Packages/User/Package Control.sublime-settings"
    - ln -s /Users/status/work/dotfiles/.sublime/Preferences.sublime-settings "/Users/status/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"
13. Git clone
14. android emulator, iOS simulator
