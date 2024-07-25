#!/usr/bin/env bash

Basic_software="vim-gtk build-essential curl git htop glances gh clang-format valgrind cppcheck linux-tools-common tree"
Setup_dir=Linux_Setup
VimUndo_dir=.vim/undo

# Install basic software
sudo apt update -y || exit 1
sudo apt upgrade -y || exit 1
sudo apt -y install $Basic_software || exit 1

# Setup vim
if [ ! -d "~/$VimUndo_dir" ]; then
    mkdir -p ~/$VimUndo_dir || exit 1
fi

mkdir -p ~/.vim || exit 1
cp -r colors ~/.vim || exit 1
cp .vimrc ~ || exit 1
