#!/usr/bin/env sh
set -euo pipefail

result=$(curl -sL ${SRC_URL} | curl -sL -H "Authorization: Bearer ${API_KEY}" --data-binary @- ${DST_URL})

if [ ! -z "$result" ]
then
    echo $result
    exit 1
fi
