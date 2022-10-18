#!/usr/bin/env bash
Basic_software="vim-gtk build-essential curl git htop glances gh"
Setup_dir=Linux_Setup

# Install basic software
sudo apt update -y || exit 1
sudo apt upgrade -y || exit 1
sudo apt -y install $Basic_software || exit 1

# Setup vim
if [ ! -d "./Linux_Setup" ]; then
git clone https://github.com/komark06/Linux_Setup.git
fi
if [ ! -d "~/.vim" ]; then
    mkdir -p ~/.vim || exit 1
fi
cp -r $Setup_dir/colors ~/.vim || exit 1
cp .vimrc ~ || exit 1
