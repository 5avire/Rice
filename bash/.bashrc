# ~/.bashrc

# I included this in my original bashRC so it loads this file
#if [ -f ~/rice/bash/.bashrc ]; then
#  source ~/rice/bash/.bashrc
#fi

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;33m\]\[\e[0m\] - \[\e[38;5;250m\]${PWD/#$HOME/}\[\e[0m\] \$ '

# ─── eza replacements for ls ──────────────────────────────────────
if command -v eza >/dev/null 2>&1; then
  alias ls='eza --group-directories-first'
  alias ll='eza -l --group-directories-first'
  alias la='eza -la --group-directories-first'
  alias tree='eza --tree'
fi

alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first'
alias la='eza -la --icons --group-directories-first'
