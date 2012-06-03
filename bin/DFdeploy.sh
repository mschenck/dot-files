#!/bin/bash

DOTFILES_DIR="$HOME/dot-files/"

cd "$DOTFILES_DIR"

for i in `cat ./conf/watch_list`
do
  echo "Syncing $i . "

  if [ -d $i ]
  then
    rsync -auv ./$i/* "$HOME/$i/"
  elif [ -f $i ]
  then
    rsync -auv ./$i "$HOME/$i"
  else
    echo "ERROR: $i not found!"
  fi
  echo "done."
  echo "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
done
