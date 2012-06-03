#!/bin/bash

DOTFILES_DIR="$HOME/dot-files/"

cd "$DOTFILES_DIR"

for i in `cat ./conf/watch_list`
do
  echo "Syncing $i . "
  rsync -auv "$HOME/$i" .
  echo "done."
  echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
done
