#!/usr/bin/env sh
set -euo pipefail

while true
do
    result=$(curl -sL ${SRC_URL} | curl -sL -H "X-Bedrock-Api-Token: ${API_KEY}" --data-binary @- ${DST_URL})
    if [ ! -z "$result" ]
    then
        echo $result
        # exit 1
    fi

    sleep ${PUSH_INTERVAL}
done
