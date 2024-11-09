#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing btop configuration..."

if [ ! -d /home/$USER/.config/btop ]; then
  ln -sf /home/$USER/dotfiles/.config/btop /home/$USER/.config/btop
else
  echo "[CONFIG] ${yellow}btop configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}btop configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}btop configuration installation failed!\e[0m"
fi

