#!/bin/bash

echo "Copying rc files..."

curl -fsSL \
  "https://raw.githubusercontent.com/leticia/serversrc/master/.gemrc" -o ~/.gemrc \
  "https://raw.githubusercontent.com/leticia/serversrc/master/.vimrc" -o ~/.vimrc

curl -fsSL "https://raw.githubusercontent.com/leticia/serversrc/master/.bashrc" >> ~/.bashrc
curl -fsSL "https://raw.githubusercontent.com/leticia/serversrc/master/.bash_profile" >> ~/.bash_profile

[[ -f .gemrc && -f .vimrc && -f .bashrc && -f .bash_profile ]] && echo "Done!" || echo "Files weren't downloaded."
