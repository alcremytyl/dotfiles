#!/usr/bin/bash

export EDITOR=~/.local/bin/nvim
export VISUAL="$EDITOR"         # for ranger
export TERMINAL=kitty
export RANDOMIZE_WALLPAPER=false # for ~/.config/bspwm/bspwmrc
export ICON_PATH=~/.local/share/icons

# TODO: pywal this bitch up
# TODO: nvm donn't do that 
export FZF_DEFAULT_OPTS="
  --height=50% --border --layout=reverse-list
  --preview=\"
    if [[ {} =~ ('.jpg'|'.JPG'|'.jpeg'|'.png'|'.PNG')$ ]]; then 
      catimg -H 40 {}
    elif [ -d {} ]; then 
      ls --color=always --group-directories-first -H {}
    else
      nl -pba -w1 -s' ' {}
    fi\"
  --color fg:7,bg:0,hl:1,fg+:232,bg+:1,hl+:255
  --color info:7,prompt:2,spinner:1,pointer:232,marker:1
"

# <-- XDG info --> 
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$XDG_DATA_HOME/python/bin"

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

export CARGO_HOME="$XDG_DATA_HOME/share/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"

export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"

. "/home/mytyl/.local/share/share/cargo/env"
