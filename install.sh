#!/usr/bin/env bash
Basic_software="vim-gtk build-essential curl git htop glances gh"
Setup_dir=Linux_Setup
VimUndo_dir=.vim/undo

# Install basic software
sudo apt update -y || exit 1
sudo apt upgrade -y || exit 1
sudo apt -y install $Basic_software || exit 1

# Setup vim
if [ ! -d "./$Setup_dir" ]; then
git clone https://github.com/komark06/Linux_Setup.git
fi
if [ ! -d "~/$VimUndo_dir" ]; then
    mkdir -p ~/$VimUndo_dir || exit 1
fi

mkdir -p ~/.vim || exit 1
cp -r $Setup_dir/colors ~/.vim || exit 1
cp $Setup_dir/.vimrc ~ || exit 1
