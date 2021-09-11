#!/bin/env bash

# Install fnm (fast node manager)
FNMDIR="$HOME/.local/share/fnm"
FNM="$HOME/.local/share/fnm/fnm"
mkdir -p "$FNMDIR"
curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir "$FNMDIR" --skip-shell

$FNM completions --shell `basename $SHELL`
eval "$($FNM env)"
export PATH="$FNMDIR:$PATH"
$FNM install --lts
