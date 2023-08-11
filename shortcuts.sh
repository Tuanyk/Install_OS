#!/usr/bin/bash

# XFCE4 Terminal
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super>Return' -n -t string -s 'xfce4-terminal'

# TextEditor MousePad
xfconf-query -c xfce4-keyboard-shortcuts -p '/commands/custom/<Super><Shift>e' -n -t string -s 'mousepad'

