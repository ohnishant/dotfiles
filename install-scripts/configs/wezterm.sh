#!/usr/bin/sh

. ./color_utils.sh

echo "[CONFIG] Installing wezterm configuration..."

if [ ! -d /home/$USER/.config/wezterm ]; then
  ln -sf /home/$USER/dotfiles/.config/wezterm /home/$USER/.config/wezterm
else
  echo "[CONFIG] ${yellow}wezterm configuration already exists!\tSkipping...${normal}"
fi


if [ $0 ]; then
  echo "[CONFIG] ${green}wezterm configuration installed successfully!${normal}"
else
  echo "[CONFIG] ${red}wezterm configuration installation failed!\e[0m"
fi

