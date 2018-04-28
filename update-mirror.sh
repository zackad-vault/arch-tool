#!/usr/bin/env sh
curl -s "https://www.archlinux.org/mirrorlist/?country=ID" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - > /etc/pacman.d/mirrorlist
