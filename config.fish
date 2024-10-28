if status is-interactive
    # Commands to run in interactive sessions can go here
starship init fish | source
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
alias switchphp="sudo update-alternatives --config php"
alias pa="php artisan"
alias update="sudo apt-get update && sudo apt-get upgrade"
alias reboot="sudo reboot now"
alias shutdown="sudo shutdown now"
end
set -x PHPENV_ROOT "/home/naimul/.phpenv"
if test -d "/home/naimul/.phpenv"
  set -x PATH "/home/naimul/.phpenv/bin" $PATH
  status --is-interactive; and . (phpenv init -|psub)
end
function ph
   # set dir (or $argv .)  # If an argument is passed, use it; otherwise, use the current directory (.)
    phpstorm $argv > /dev/null 2>&1 &
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
#debian message
set -x BASH_SILENCE_DEBIAN_MESSAGE 1
#fnm env --use-on-cd --shell fish | source
