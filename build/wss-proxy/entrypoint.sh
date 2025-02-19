#!/bin/sh

echo "[WSS Proxy] Waiting for 40 seconds until all services are ready..."
sleep 40

echo "[WSS Proxy] Starting..."
echo "Server Address: $Q3JS_WSS_PROXY_ADDRESS:$Q3JS_WSS_PROXY_PORT"
echo "Listen Address: 0.0.0.0:$Q3JS_WSS_PORT"

cd /app
echo "{ \"proxyAddr\": \"$Q3JS_WSS_PROXY_ADDRESS\", \"proxyPort\": $Q3JS_WSS_PROXY_PORT, \"listenPort\": $Q3JS_WSS_PORT }" > bin/config.json
jq -s 'add' certificates/config.json bin/config.json > temp-config.json && mv temp-config.json bin/config.json
node bin/wssproxy.js
