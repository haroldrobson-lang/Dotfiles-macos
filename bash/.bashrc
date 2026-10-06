# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc
export opam=./Downloads/opam-2.5.0-arm64-linux
# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

export PATH="$PATH:/home/Harold/.config/.foundry/bin"
alias lg='lazygit'

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/Harold/.opam/opam-init/init.sh' && . '/home/Harold/.opam/opam-init/init.sh' >/dev/null 2>/dev/null || true
# END opam configuration
