fpath+=($HOME/.config/zsh/pure)

autoload colors         # enable colors
autoload -U compinit    # enable auto completion
autoload -U promptinit  # advanced prompts support
colors                  # initialize
compinit -u             # longest wait
promptinit

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

prompt pure

# Config parts
for config_file in ~/.config/zsh/*.zsh; do
  source "$config_file"
done
