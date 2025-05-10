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

# CUSTOM

## ALIAS
alias cl="clear"
alias lsda="lsd -la"
alias lsdl="lsd -l"
alias lsdt="lsd --tree"
alias lsdtl="lsd --tree -l"

# Starship.rs
eval "$(starship init bash)"

# SOURCE
. "$HOME/.cargo/env"

export PATH=$PATH:~/.spicetify
