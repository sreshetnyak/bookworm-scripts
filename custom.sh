#!/usr/bin/env bash

\cp -r dotfiles/bin/ ~
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
\cp -r dotfiles/.config/backgrounds/ ~/.config/
\cp -r dotfiles/.config/i3/ ~/.config/
\cp -r dotfiles/.config/picom/ ~/.config/
\cp -r dotfiles/.config/polybar/ ~/.config/
\cp -r dotfiles/.config/rofi/ ~/.config/

bash ~/bookworm-scripts/resources/ohmyzsh.sh

sudo echo "Hidden=true" >> /etc/xdg/autostart/nm-applet.desktop