
# env
export EDITOR=vim
export VISUAL=vim
export PATH="$PATH:/home/paulclrt/exe"

# aliases
#alias vim=nvim
alias ll='ls -alF'
bosemac='E4:58:BC:5E:F5:02'
alias btbose="bluetoothctl connect $bose_mac"

# cargo / local env
source "$HOME/.cargo/env"
source "$HOME/.local/bin/env"

# nvm
export NVM_DIR="$HOME/.var/app/com.visualstudio.code/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# completion zsh
autoload -Uz compinit
compinit

# prompt (simple)
autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' (%b)'
PROMPT='%F{green}%n@%m%f:%F{blue}%~%f${vcs_info_msg_0_}%# '
#
# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/paulclrt/.lmstudio/bin"
# End of LM Studio CLI section

# opencode
export PATH=/home/paulclrt/.opencode/bin:$PATH


eval $(ssh-agent -s) &> /dev/null

# keybindings (erase all and redo everything)
bindkey -e

# ctrl arrow for moving words (fixes tmux + ghostty problem i had)
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
# edit current line in $EDITOR
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
# shift tab for cycling backwards in suggestions
zmodload zsh/complist
bindkey -M menuselect '^[[Z' reverse-menu-complete
# edit current line in $EDITOR
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line

# more keybinds to learn and use
# https://zsh.sourceforge.io/Intro/intro_11.html


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
