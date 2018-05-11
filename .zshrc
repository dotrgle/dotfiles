# Created by newuser for 5.5.1
source ~/.zplug/init.zsh

zplug "modules/directory", from:prezto
zplug "modules/utility", from:prezto
zplug "modules/completion", from:prezto
zplug "modules/pacman", from:prezto
zplug "modules/syntax-highlighting", from:prezto
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zstyle ':prezto:*:*' color 'yes'

SPACESHIP_VI_MODE_COLOR=green
SPACESHIP_EXIT_CODE_SHOW=true

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# Enable vi-mode
spaceship_vi_mode_enable

# Neovim
if (( $+commands[nvim] )); then
  export EDITOR=nvim
fi

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autojump
[ -f /etc/profile.d/autojump.zsh ] && source /etc/profile.d/autojump.zsh

# Store config on git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#
# Load local configs
#
if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi


