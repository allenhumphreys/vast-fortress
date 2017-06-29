#!/usr/bin/env bash

if [[ "Darwin" != `uname` ]]; then
  echo "This script is written for MacOS"
  exit -1
fi

if [[ -z `which brew` ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ -z `which psql` ]]; then
  echo "You need to have postgres installed"
fi

if [ ! -d "venv" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  virtualenv -p /usr/local/bin/python3 venv
fi

source venv/bin/activate
