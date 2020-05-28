# testing to parse commit

# Print on stderr to not pollute function return echo
function error -a "message" -d "Git style error message"
    echo "::error::$message" >& 2
    exit 1
end

set lastRelease (echo "$ARG_0" | jq -r '.lastRelease' )
and set newRelease (echo "$ARG_0" | jq -r '.currentVersion' )
or error "`auto` provided malformed json in Env ARG_0!\n$ARG_0"

if test \( -z "$lastRelease" -o -z "$newRelease" \)
    error "`auto` provided empty ENV json!"
end

sed -i "s/\[$lastRelease\]/[$newRelease]/g" *.sty