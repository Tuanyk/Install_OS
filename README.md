# Add user to sudoers on Debian

On Debian 12, logout and login as root

usermod -aG sudo {YOUR_USER_NAME}

For example:

usermod -aG sudo leo