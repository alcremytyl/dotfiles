#!/usr/bin/bash

export VISUAL=$EDITOR

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


. "$HOME"/.bash_aliases
. "$HOME"/.local/share/cargo/env
. "$HOME"/.cache/wal/colors.sh
eval "$(starship init bash)"
