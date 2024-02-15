#!/bin/bash
# install.sh - installs the dotfiles from this repository
# usage: curl -sL https://raw.githubusercontent.com/Balfa/dotfiles/main/install.sh | bash
# currently included in `post-install-first-steps.md`

cd ~
wget --no-clobber https://raw.githubusercontent.com/Balfa/dotfiles/main/.bash_profile
wget --no-clobber https://raw.githubusercontent.com/Balfa/dotfiles/main/.bashrc
wget --no-clobber https://raw.githubusercontent.com/Balfa/dotfiles/main/.gitconfig
mkdir -p AppData/Roaming/Code/User/
cd AppData/Roaming/Code/User/
wget --no-clobber https://raw.githubusercontent.com/Balfa/dotfiles/main/keybindings.json
wget --no-clobber https://raw.githubusercontent.com/Balfa/dotfiles/main/settings.json
