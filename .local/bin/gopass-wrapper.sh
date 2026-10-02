#!/bin/sh

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_DATA_HOME="${XFG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XFG_STATE_HOME:-$HOME/.local/state}"
export XDG_RUNTIME_DIR="${XFG_RUNTIME_HOME:-$TMPDIR}"

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/run/current-system/sw/bin"
export GPG_TTY="$(tty)"

# Uncomment to debug gopass-jsonapi
# export GOPASS_DEBUG_LOG=/tmp/gopass-jsonapi.log

if [ -f ~/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
	source ~/.gpg-agent-info
	export GPG_AGENT_INFO
else
	eval $(gpg-agent --daemon)
fi

export GOPASS_AGE_PASSWORD="YUBIKEYDOESNTNEEDPAPASSWORD"

# export PINENTRY_PROGRAM="${HOME}/bin/pinentry-env"
export PINENTRY_PROGRAM="/run/current-system/sw/bin/pinentry-mac"


PINENTRY_USER_DATA=mac /run/current-system/sw/bin/gopass-jsonapi listen

exit $?
