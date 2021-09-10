#!/bin/env bash

source ../files/PKGMGR

[ ! `command -v vim` ] && $INSTALL vim

$INSTALL neovim

# Install lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
