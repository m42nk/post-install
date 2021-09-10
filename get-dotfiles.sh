#!/bin/env bash

DOTFILES="$HOME/Dotfiles"

[ -d $DOTFILES ] && mv $DOTFILES "$DOTFILES.bak"
git clone "https://github.com/m42nk/dotfiles" $DOTFILES
