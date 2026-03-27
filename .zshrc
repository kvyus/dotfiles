
source ~/.antidote/antidote.zsh

antidote load

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

export EDITOR='nvim'

alias v='nvim'
alias dv='doas nvim'
alias demerge='doas emerge'
alias ls='lsd'
alias lsa='lsd -a'

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

PROMPT=' %~ $ '

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[precommand]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[command]='fg=#81A1C1'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#81A1C1'
ZSH_HIGHLIGHT_STYLES[function]='fg=#8FBCBB'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#8FBCBB'
ZSH_HIGHLIGHT_STYLES[path]='fg=#A3BE8C'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#EBCB8B'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#BF616A'

eval "$(zoxide init zsh)"

pokemon-colorscripts -r
