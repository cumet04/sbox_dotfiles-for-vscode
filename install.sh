#!/bin/bash

sudo apt-get update
sudo apt-get install -y direnv fish git jq neovim
sudo chsh $USER -s /usr/bin/fish
