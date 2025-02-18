#!/bin/sh

echo "[Dedicated Server] Waiting for 10 seconds until all services are ready..."
sleep 10

export Q3JS_DOMAIN="$Q3JS_DOMAIN:9000"

echo "[Dedicated Server] Starting..."
echo "Content Server: $Q3JS_DOMAIN"
echo "Gamemode: $Q3JS_SERVER_GAMEMODE"
echo "Dedicated: $Q3JS_SERVER_DEDICATED"

cd /app
node build/ioq3ded_secure.js +set fs_game "$Q3JS_SERVER_GAMEMODE" +set dedicated $Q3JS_SERVER_DEDICATED +set fs_cdn "$Q3JS_DOMAIN" +exec server.cfg
