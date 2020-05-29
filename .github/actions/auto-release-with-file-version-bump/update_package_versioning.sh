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

if [[ -z "$lastRelease" && -z "$newRelease" ]]; then
    error "auto provided empty ENV json!"
fi

sed -i "s/\[$lastRelease\]/[$newRelease]/g" -- *.sty
