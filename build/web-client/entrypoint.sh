#!/bin/sh

export Q3JS_CONTENT_DOMAIN="$Q3JS_DOMAIN:9000"
export Q3JS_MASTER_DOMAIN="$Q3JS_DOMAIN"

echo "[Web Client] Starting..."
echo "Content Server: $Q3JS_CONTENT_DOMAIN"
echo "Master Server: $Q3JS_MASTER_DOMAIN"

cd /app
echo "{ \"content\": \"$Q3JS_CONTENT_DOMAIN\", \"master\": \"$Q3JS_MASTER_DOMAIN\", \"port\": 443 }" > bin/config.json
jq -s 'add' certificates/config.json bin/config.json > temp-config.json && mv temp-config.json bin/config.json
node bin/web.js
