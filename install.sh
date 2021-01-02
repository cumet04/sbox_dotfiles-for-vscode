#!/bin/bash

sudo apt-get update
sudo apt-get install -y colordiff direnv fish git jq neovim peco tig

# devcontainer create .config AFTER this script run.
# So 'ln -s $PWD/home/.config $HOME/.config' doesn't work.
mkdir -p $HOME/.config
CONF_ROOT=$(pwd -P)/home/.config
ls -1 $CONF_ROOT | xargs -ISRC ln -s $CONF_ROOT/SRC $HOME/.config/
