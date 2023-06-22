echo "ADDING i3-dev REPO TO APT KEY"
curl https://baltocdn.com/i3-window-manager/signing.asc | sudo apt-key add -

echo "INSTALLING APT-TRANSPORT"
sudo apt install apt-transport-https --yes

echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild-ubuntu/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list

sudo apt update
sudo apt install i3
