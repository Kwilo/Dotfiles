# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Shut the fetch up
# source $HOME/bin/stfu.sh
fastfetch -l none &
## ALIAS
alias cl="clear"
alias ff="fastfetch"
# alias lsd="lsd -l"
alias lsda="lsd -la"
alias protontricks='flatpak run com.github.Matoking.protontricks'
# PROMPT
## wrapper: "\[\e[91m\]  [  \[\e[0m\]  --%--  \[\e[91m\]  ]  \[\e[0m\]"
# export PS1="\[\e[91m\][\[\e[0m\]\A\[\e[91m\]][\[\e[0m\]\w\[\e[91m\]]\[\e[0m\]\$ "
## Starship.rs
eval "$(starship init bash)"
