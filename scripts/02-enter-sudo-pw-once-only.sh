#!/bin/env bash

[ ! -f "$ROOTDIR/files/20-wheelnopasswd" ] && echo "Missing 20-wheelnopasswd file" && exit
[ ! -d "/etc/sudoers.d" ] && echo "Creating /etc/sudoers.d" && sudo mkdir /etc/sudoers.d/

echo "Copying 20-wheelnopasswd to /etc/sudoers.d/.."
sudo cp "$ROOTDIR/files/20-wheelnopasswd" /etc/sudoers.d/
echo "Done"

