#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing dunst configuration..."

if [ ! -d /home/$USER/.config/dunst ]; then
  ln -sf /home/$USER/dotfiles/.config/dunst /home/$USER/.config/dunst
else
  echo "[CONFIG] ${yellow}dunst configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}dunst configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}dunst configuration installation failed!\e[0m"
fi

