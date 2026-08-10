fpath+=($HOME/.config/zsh/pure)

autoload colors         # enable colors
autoload -U promptinit  # advanced prompts support
colors                  # initialize
promptinit

prompt pure

# Config parts
for config_file in ~/.config/zsh/*.zsh; do
  source "$config_file"
done
