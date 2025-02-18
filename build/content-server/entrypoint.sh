#!/bin/sh

if [ ! -f "assets/manifest.json" ]; then
    echo "[Content Server] Manifest is missing, an attempt will be made to automatically download the resources needed to run the game client."
    bash html/get_assets.sh
else
    echo "[Content Server] Manifest found, resource download from central content server canceled."
fi

cd /app
echo "{ \"root\": \"/app/assets\", \"port\": 9000 }" > bin/config.json
jq -s 'add' certificates/config.json bin/config.json > temp-config.json && mv temp-config.json bin/config.json
node bin/content.js
