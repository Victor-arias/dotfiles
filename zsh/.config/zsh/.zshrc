# Use emacs keybindings (e.g: Use `ctrl-a` to move beggining of line).
bindkey -e

# Modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename '/home/victorarias/.zshrc'

# Auto cd (E.g: Use `..`to go one directory up).
#setopt autocd extendedglob

# Custom aliases
ALIASES_DIR="$HOME/.config/aliases"
if [ -d "$ALIASES_DIR" ]; then
    source "$ALIASES_DIR/aliases"
fi

## Check if a command exists
## param $1: command to test.
## return: 0 or 1.
function isCommand ()
{
    if command -v $1 &> /dev/null
    then
        return 0 # true
    else
        return 1 # false
    fi
}

## onefetch
## `cd` a directory and check if `.git`is present.
## If present, check if onefetch installed and autoexec it.
function isGitRepo() {
    cd "$1"
    isCommand onefetch
     if [[ -d .git ]] && [[ $? == 0 ]]; then
	onefetch
    fi
}
alias cd='isGitRepo'

# Auto load custom commands on init

## Starship prompt
if isCommand starship; then
    eval "$(starship init zsh)"
fi

## History fuzzy navigator
if isCommand mcfly; then
    export MCFLY_FUZZY=2
    eval "$(mcfly init zsh)"
fi

# Neofetch system info
if isCommand neofetch; then
    neofetch
fi
