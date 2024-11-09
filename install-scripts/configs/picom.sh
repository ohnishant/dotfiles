#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing picom configuration..."

if [ ! -f /home/$USER/.config/picom.conf ]; then
  ln -sf /home/$USER/dotfiles/.config/compton.conf /home/$USER/.config/picom.conf
else
  echo "[CONFIG] ${yellow}picom configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}picom configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}picom configuration installation failed!\e[0m"
fi

