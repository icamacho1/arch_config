#! /bin/sh
current_layout=$(setxkbmap -print -verbose 10 | grep xkb_symbols | cut -d + -f2)
[[ $current_layout = es ]] && setxkbmap us
[[ $current_layout = us ]] && setxkbmap es
