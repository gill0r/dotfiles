#!/bin/sh
BASEDIR=$(dirname "$0")

cd ~/.dotfiles && git pull

if [ "$(uname)" == "Darwin" ]; then
  sh "scripts/update_macosx.sh"
fi

if [ "$(uname)" == "Linux" ]; then
  sh "scripts/update_linux.sh"
fi

if [ -f ~/.update.local.sh ]; then
  sh ~/.update.local.sh
fi
