#!/usr/bin/bash

sudo apt update
sudo apt install -y ffmpeg
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y ffmpeg obs-studio