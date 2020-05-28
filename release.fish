function setup_env -d "Download and install required packages/programs for release"
    apk add --no-cache gzip curl jq sed
end

function run_auto_tool -d "Run the automation release tool `auto` and trigger file versioning script"
    curl -vkL -o - https://github.com/intuit/auto/releases/latest/download/auto-linux.gz | gunzip > ~/auto 
    chmod a+x ~/auto
    ~/auto shipit
end

setup_env
run_auto_tool
