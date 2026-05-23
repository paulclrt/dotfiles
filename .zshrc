# env
export EDITOR=nvim
export VISUAL=nvim
export PATH="$PATH:/home/paulclrt/exe"

# aliases
alias vim=nvim
alias ll='ls -alF'

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




bindkey -e
