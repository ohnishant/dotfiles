#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing kitty configuration..."

if [ ! -d /home/$USER/.config/kitty ]; then
  ln -sf /home/$USER/dotfiles/.config/kitty /home/$USER/.config/kitty
else
  echo "[CONFIG] ${yellow}kitty configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}kitty configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}kitty configuration installation failed!\e[0m"
fi

