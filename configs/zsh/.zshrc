# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bykow-i3/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="custom"
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# PATH
PATH=/home/bykow-i3/.local/bin:$PATH

goshit () {
    export GOPATH=$PWD/.gopath
}

# FZF
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_COMPLETION_OPTS='-i'
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# ALIAS
alias fixwifi="sudo ip link set wlp1s0 down; sudo ip link set wlp1s0 up"
alias fixmonitor="autorandr -c && i3-msg restart"
alias zshconfig="code ~/.zshrc"
alias i3config="code ~/.config/i3/config"
alias barconfig="code ~/.config/polybar/config"
alias polyconfig="code ~/.config/polybar/config"
alias polybarconfig="code ~/.config/polybar/config"
alias yeet="yay -Syyu"
alias vim="nvim"