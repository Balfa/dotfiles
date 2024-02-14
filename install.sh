#!/bin/bash
# install.sh - installs the dotfiles from this repository
# usage: curl -sL https://raw.githubusercontent.com/Balfa/dotfiles/main/install.sh | bash
# currently included in `post-install-first-steps.md`

cd ~
wget https://raw.githubusercontent.com/Balfa/dotfiles/main/.bash_profile
wget https://raw.githubusercontent.com/Balfa/dotfiles/main/.bashrc
wget https://raw.githubusercontent.com/Balfa/dotfiles/main/.gitconfig
