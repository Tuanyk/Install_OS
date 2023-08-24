#!/usr/bin/bash

sudo apt install -y curl
echo 'deb http://download.opensuse.org/repositories/home:/lamlng/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL https://download.opensuse.org/repositories/home:lamlng/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_lamlng.gpg > /dev/null
sudo apt update
sudo apt install ibus-bamboo
ibus engine Bamboo

# THIS CODE IS FOR KDE PLASMA -> WORK GREAT, I CAN TYPE VIETNAMESE EVERYWHERE, FINALLY, AFTER 2 YEARS =)))))
FILE_PATH=~/.config/plasma-workspace/env/ibus_env.sh
CONTENT="#!/bin/bash\nexport GTK_IM_MODULE=ibus\nexport XMODIFIERS=@im=ibus\nexport QT_IM_MODULE=ibus"
echo -e "$CONTENT" > "$FILE_PATH"
chmod +x "$FILE_PATH"