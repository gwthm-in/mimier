#!/bin/bash

# Discussion, issues and change requests at:
#   https://github.com/gowtham-sai/mimier
#
# Script to install mimier
# Strictly Mac System.
#
# Run as root or insert `sudo -E` before `bash`:
#
# curl -sL https://mimier.github.io/install | bash -
#   or
# wget -qO- https://mimier.github.io/install | bash -
#

if ! [ -x "$(command -v git)" ]; then
  printf "[-]: git is not installed\n"
  printf "[?]: Installing git\n"
  brew install git
  printf "[+]: git is installed successfully\n"
fi

if ! [ -x "$(command -v oathtool)" ]; then
  printf "[-]: oathtool is not installed\n"
  printf "[?]: Installing oathtool\n"
  brew install oath-toolkit
  printf "[+]: oathtool is installed successfully\n"
fi

git clone https://github.com/gowtham-sai/mimier.git /tmp/mimier
cp /tmp/mimier/mimier /usr/local/bin/
cp -r /tmp/mimier/mimier.workflow ~/Library/Services/mimier.workflow
rm -rf /tmp/mimier

printf "[+]: mimier service installed\n"
printf "[+]: Consider setting keyboard shorcut\n\n"

mimier
