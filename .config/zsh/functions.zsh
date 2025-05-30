function src() {
    autoload -U zrecompile
    [[ -f ~/.zshrc ]] && zrecompile -p ~/.zshrc
    [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
    [[ -f ~/.zcompdump ]] && zrecompile -p ~/.zcompdump
    [[ -f ~/.zshrc.zwc.old ]] && rm -f ~/.zshrc.zwc.old
    [[ -f ~/.zcompdump.zwc.old ]] && rm -f ~/.zcompdump.zwc.old
    source ~/.zshrc
}

function b {
    if [[ $# == 0 || $1 == "unlock" ]]; then
        if [[ -f "${HOME}/.bwsession" ]]; then
            source "${HOME}/.bwsession"
        fi
        if ! bw login --check; then
            echo "Log in:"
            bw login
        fi
        if ! bw unlock --check; then
            BW_SESSION=$(bw --response unlock | jq '.data.raw')
            export BW_SESSION
            echo "export BW_SESSION=${BW_SESSION}" > "${HOME}/.bwsession"
        fi
        bw sync
    else
        bw "$@"
    fi
}

function t {
    if [[ $# == 0 ]]; then
        terraform plan
    else
        terraform "$@"
    fi
}

function select-work-dir() {
    echo "${HOME}"
    WORK_DIR="${HOME}/work"
    SELECTED=$(ls "${WORK_DIR}" | fzf)
    [[ -n "${SELECTED}" ]] && cd "${WORK_DIR}/${SELECTED}"
    echo
    zle reset-prompt
}
zle     -N   select-work-dir
bindkey '^a' select-work-dir
