#/bin/bash
cat .git/config  | grep url | awk '{print $NF}' | awk -F '@' '{print $NF}' | replace  ':' '/' | replace github.com 'https://github.com' | xargs nohup chromium-browser > /dev/null 2>&1 &
