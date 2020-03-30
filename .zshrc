# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.

export ZSH=/Users/kitt/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(
    git colored-man-pages zsh-syntax-highlighting zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

prompt_context() {
    if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
    fi
}

export VISUAL=nvim
export EDITOR="$VISUAL"

# completion
# CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# zsh-syntax-highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
export HOME=/Users/kitt

# for virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# sourcing
source ~/.bash_aliases
source ~/.devenv/common


# methods
function dclogs() {
    dc logs -f --tail=50 "$1"web "$1"worker;
}

function dcbash() {
    dc exec "$1" bash;
}

function mpm() {
    mkdir $1; cd $1; touch __init__.py;
}

function gscp() {
    export cwd=$PWD;
    giri;
    if [[ "$1" == 'P' ]]; then
        ./manage.py scp -P "$3""$2" "$4""$2";
    else
        ./manage.py scp "$2""$1" "$3""$1";
    fi
    cd $cwd
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

