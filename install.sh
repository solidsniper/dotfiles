#!/bin/bash
sudo pacman -S bitwarden-cli --noconfirm

bw config server https://bitwarden.stryzen.com

export BW_SESSION=$(bw unlock --raw $1)

[ ! -z "$BW_SESSION" ] && echo "Login successful" && chezmoi apply -v