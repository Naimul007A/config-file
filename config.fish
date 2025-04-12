set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias py-init='python3 -m venv .venv'
alias py-a='. .venv/bin/activate.fish'
# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
alias pa="php artisan"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
alias update="sudo pacman -Syu && yay"

function ph
   # set dir (or $argv .)  # If an argument is passed, use it; otherwise, use the current directory (.)
    phpstorm $argv > /dev/null 2>&1 &
end
function pc
   # set dir (or $argv .)  # If an argument is passed, use it; otherwise, use the current directory (.)
    pycharm-professional $argv > /dev/null 2>&1 &
end
function cr
   # set dir (or $argv .)  # If an argument is passed, use it; otherwise, use the current directory (.)
    cursor $argv > /dev/null 2>&1 &
end
function ws
   # set dir (or $argv .)  # If an argument is passed, use it; otherwise, use the current directory (.)
    webstorm $argv > /dev/null 2>&1 &
end

# pnpm
set -gx PNPM_HOME "/home/naimul/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# bore.pub
export PATH="$HOME/.cargo/bin:$PATH"

#idea.helper
alias idea-healper="php artisan ide-helper:generate && php artisan ide-helper:models --nowrite  && php artisan ide-helper:meta"
