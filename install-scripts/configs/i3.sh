#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing i3 configuration..."

if [ ! -d /home/$USER/.config/i3 ]; then
  ln -sf /home/$USER/dotfiles/.config/i3 /home/$USER/.config/i3
else
  echo "[CONFIG] ${yellow}i3 configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}i3 configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}i3 configuration installation failed!\e[0m"
fi

