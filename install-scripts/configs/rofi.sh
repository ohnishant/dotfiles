#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing rofi configuration..."

if [ ! -d /home/$USER/.config/rofi ]; then
  ln -sf /home/$USER/dotfiles/.config/rofi /home/$USER/.config/rofi
else
  echo "[CONFIG] ${yellow}rofi configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}rofi configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}rofi configuration installation failed!\e[0m"
fi

