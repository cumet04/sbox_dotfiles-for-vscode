#!/bin/bash

cd $(dirname $0)

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git jq neovim peco tig

if [ -d $HOME/.config ]; rm -r $HOME/.config; fi # clean for devcontainer
ln -s $PWD/home/.config $HOME/.config
