#!/bin/bash

# pull all repositories in a folder
#
# by RaveMaker - http://ravemaker.net
#

# Load settings
if [ -f settings.cfg ]; then
  echo "Loading settings..."
  source settings.cfg
else
  echo "ERROR: Create settings.cfg (from settings.cfg.example)"
  exit
fi

function git-pull() {
  cd "$GIT_FOLDER" 2>/dev/null || {
    echo "The directory doesn't exist"
    return
  }
  echo -n "git pull "
  pwd
  if [ "$DEBUG_MODE" == "false" ]; then
    git pull
  fi
}

for DEST_FOLDER in "${DEST_FOLDERS[@]}"; do
  for GIT_FOLDER in "$DEST_FOLDER"/*; do
    if [ -d "$GIT_FOLDER" ]; then
      git-pull
    fi
  done
done
