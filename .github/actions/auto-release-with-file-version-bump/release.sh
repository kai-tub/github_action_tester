#!/bin/bash
# Download and run the `auto` tool -> With the provided .autorc file,
# it will trigger to call update_package_versioning.sh
curl -vkL -o - https://github.com/intuit/auto/releases/latest/download/auto-linux.gz | gunzip > ~/auto 
chmod a+x ~/auto
git config user.email "$GITHUB_ACTOR@users.noreply.github.com"
git config user.name "$GITHUB_ACTOR"
~/auto shipit
