#!/bin/bash
# Script is triggered by `auto` BeforeChangelog

set -e 

# Print on stderr to not pollute function return echo
function error {
    echo "::error::$1" >& 2
    exit 1
}

lastRelease=$(echo "$ARG_0" | jq -r '.lastRelease' )
newRelease=$(echo "$ARG_0" | jq -r '.currentVersion' )

echo "lastRelease: $lastRelease"
echo "newRelease: $newRelease"

if [[ -z "$lastRelease" && -z "$newRelease" ]]; then
    error "auto provided empty ENV json!"
fi

echo "The script is actually running"
ls -la
echo "$PWD"

sed -i "s/\[$lastRelease\]/[$newRelease]/g" -- *.sty
