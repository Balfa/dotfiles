#!/bin/bash
# install.sh - installs the dotfiles from this repository
# usage: curl -sL https://raw.githubusercontent.com/Balfa/dotfiles/main/install.sh | bash
# currently included in `post-install-first-steps.md`

cd ~
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/.bash_profile
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/.bashrc
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/.gitconfig
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/.gitconfig
mkdir -p AppData/Roaming/Code/User/
cd AppData/Roaming/Code/User/
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/keybindings.json
wget --timestamping https://raw.githubusercontent.com/Balfa/dotfiles/main/settings.json
