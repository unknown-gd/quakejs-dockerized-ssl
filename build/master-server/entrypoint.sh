#!/bin/sh

echo "[Master Server] Starting..."

cd /app
echo "{ \"port\": 27950 }" > bin/config.json
jq -s 'add' certificates/config.json bin/config.json > temp-config.json && mv temp-config.json bin/config.json
node bin/master.js
