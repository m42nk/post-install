#!/bin/env bash

# Install fnm (fast node manager)
mkdir -p $HOME/.local/share/fnm
curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "$HOME/.local/share/fnm" --skip-shell

fnm completions --shell `basename $SHELL`
