#!/bin/bash

# Detect the platform
OS="`uname`"
case $OS in
  'Linux')
    OS='Linux'
    alias ls='ls --color=auto'
    ;;
  'FreeBSD')
    OS='FreeBSD'
    alias ls='ls -G'
    ;;
  'WindowsNT')
    OS='Windows'
    ;;
  'Darwin') 
    OS='Mac'
    ;;
  'SunOS')
    OS='Solaris'
    ;;
  'AIX') ;;
  *) ;;
esac

read -e -p "Enter the path to the script?" path

if [ "$OS" == "Linux" ]; then
  # Linux
  export PATH=$PATH:"$HOME/.pub-cache/bin"
elif [ "$OS" == "Mac" ]; then
  # Mac
sudo echo -n export PATH="\$PATH":\""$path"\" >> ~/.zshrc

source ~/.zshrc

elif [ "$OS" == "Windows" ]; then
  # Windows
  export PATH=$PATH:"$HOME/.pub-cache/bin"
fi


