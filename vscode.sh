#!/usr/bin/bash


# Install VS Code
sudo apt update
sudo apt install -y curl gpg
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o /usr/share/keyrings/microsoft-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update
sudo apt install code

# VSCode
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super><Shift>c' -n -t string -s 'code'