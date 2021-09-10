#!/bin/env bash

source $ROOTDIR/files/PKGMGR

# Install zsh
$INSTALL zsh

# Change shell to zsh
chsh -s "`which zsh`" "`whoami`"

# Install oh-my-zsh
ZSH="$HOME/.config/oh-my-zsh" sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install starship prompt
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

