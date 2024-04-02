#!/usr/bin/env bash
# This script updates the Discord app on Linux.

echo "Downloading latest version of discord..."
curl -L -o /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

echo "Installing latest version of discord..."
sudo dpkg -i /tmp/discord.deb

echo "Update complete!"
echo "Starting discord..."
discord &
