#!/usr/bin/bash
mkcd() { mkdir -p "$1" && cd "$1" || return 1; }
alias nvim=~/.local/bin/nvim

# # write then source
# __ws() {
#   if [ $# -lt 1 ] && [ "$#" -gt 2 ]; then
#     echo "Fix your .bashrc retard"
#     return 1
#   fi
#
#   case "$1" in
#     -d) nvim -c ":cd $XDG_CONFIG_HOME/$2";;
#     -s) nvim "$2"; source "$2";;
#      *) nvim "$1";;
#   esac
# }

# write config with nvim
# exists to keep the alias list light
nvconf(){
  _CONFIG="" # config to write to

  # check if exists
  if [ -e "$HOME/$1" ]; then
    _CONFIG="$HOME/$1"
  elif [ -e ~/.config/"$1" ]; then
    _CONFIG=~/.config/"$1"
  else
    echo "Unknown file or directory"  
    return 1
  fi

  
  if [ -f "$_CONFIG" ]; then
    nvim "$_CONFIG"

  elif [ -d "$_CONFIG" ]; then
    nvim -c ":cd $_CONFIG"
  fi
}


alias ncm="ncmpcpp"
# <-- configs -->
alias balias="nvconf .bash_aliases"
alias bashrc="nvconf .bashrc"
alias nvimrc="nvconf nvim/lua/custom"
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# <-- Minecraft 1.12 -->
alias ls=ls --color=auto
alias dir=dir --color=auto
alias vdir=vdir --color=auto
alias rg=rg --color=auto
alias grep=grep --color=auto
alias fgrep=fgrep --color=auto
alias egrep=egrep --color=auto

