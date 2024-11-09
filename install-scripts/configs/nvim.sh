#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing nvim configuration..."

if [ ! -d /home/$USER/.config/nvim ]; then
  ln -sf /home/$USER/dotfiles/.config/nvim /home/$USER/.config/nvim
else
  echo "[CONFIG] ${yellow}nvim configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}nvim configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}nvim configuration installation failed!\e[0m"
fi

