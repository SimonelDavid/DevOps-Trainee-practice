#!/bin/sh

echo "PREPARING FOR BREW INSTALLATION..."
PATH=$PATH:/usr/local/bin

echo "INSTALLING NVM..."
brew upgrade
brew install nvm

echo "CREATING .NVM FOLDER..."
mkdir ~/.nvm 

echo "CREATING .BASH_PROFILE FILE..."
touch ~/.bash_profile 

echo "WRITING ON BASH_PROFILE FILE..."
echo "export NVM_DIR=~/.nvm" >> ~/.bash_profile
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.bash_profile
cat ~/.bash_profile

echo "RUNNING BASH PROFILE SCRIPT..."
source ~/.bash_profile

echo "INSTALLING NODE JS..."
nvm install node 

echo "WORK DONE!!!"
echo "WHAT VERSION OV NVM DO I HAVE?"
nvm --version