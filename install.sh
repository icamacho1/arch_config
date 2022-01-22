#! /bin/sh
# Regular packages installation:
pacman -S thunar \
          libreoffice-fresh \
          alacritty \
          bspwm \
          polybar \
          flameshot \
          geany \
          dunst \
          paru \
          neofetch \
          nitrogen \
	  rofi \
	  rclone \
	  chromium \
          starship

# Modules to run picom-ibhagwan-git:
pip3 install asciidoc meson
paru -S picom-ibhagwan-git

