#!/usr/bin/bash


# Unzip the downloaded file
unzip ./Fira_Code_v6.2.zip -d /tmp/firacode

# Create directory for FiraCode fonts
sudo mkdir -p /usr/share/fonts/truetype/firacode

# Move fonts to the system fonts directory
sudo mv /tmp/firacode/ttf/* /usr/share/fonts/truetype/firacode/

# Update font cache
sudo fc-cache -fv

# Clean up temporary files
rm -rf /tmp/firacode /tmp/firacode.zip

echo "FiraCode fonts installed successfully!"

# Set FiraCode as the default font for VSCode settings
echo '{
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true
}' > ~/.config/Code/User/settings.json

echo "FiraCode set as default font for Visual Studio Code!"
