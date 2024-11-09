#!/usr/bin/sh

. ./color_utils.sh

echo "[INSTALLER] Installing dotfiles..."

for filename in ./configs/*.sh; do
    echo "\n[INSTALLER] ${blue}${bold}Executing $filename...${normal}"
    chmod +x $filename
    $filename
done

echo "\n[INSTALLER] ${bold}${green}Dotfiles installed!${normal}"

