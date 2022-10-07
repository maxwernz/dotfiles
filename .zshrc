# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

 # If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/max/.oh-my-zsh"
export DEFAULT_USER="max"


ZSH_THEME=""

plugins=(git macos copypath zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"
alias o="open ."

alias ll="ls -la -G"
alias icloud="cd Library/Mobile\ Documents/com~apple~CloudDocs"
alias studium="cd Library/Mobile\ Documents/com~apple~CloudDocs/Studium/Semester"
alias semester="cd Library/Mobile\ Documents/com~apple~CloudDocs/Studium/Semester/4.\ Semester"
alias g="git"
alias ga="git add -A"
alias gp="git pull"
alias gcomm="git commit -avm"
alias zshconfig="vim  ~/.zshrc"
alias install="brew install"
alias uninstall="brew uninstall"

alias c='pygmentize -O style=monokai -f console256 -g'
alias python3="/usr/local/bin/python3"
alias python="/usr/local/bin/python3"

# FUNCTIONS

# Create a new directory and enter it
function md() {
	mkdir -p "$1"  
	cd "$1"
}

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
