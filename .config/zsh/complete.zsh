# TODO:
# - switch of from bash completions
# - fix cache file

# Enable auto completion
# - Reads $fpath
# - Loads _completion_function
# - Builds ~/.zcompdump
# compdef
autoload -U compinit
# -C for cache reuse
# -u for unsafe (dont check dirs permissions)
compinit -C

# Bash completion system
autoload -U +X bashcompinit
# complete, compgen
bashcompinit


# Custop completions
complete -o nospace -C "$(command -v terraform)" terraform
