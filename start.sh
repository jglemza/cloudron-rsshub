#!/bin/bash
set -ex

cp -n /app/pkg/rsshub.env /app/data/.env

echo "Start RSSHub"
chown -R cloudron:cloudron /app/data
exec /usr/local/bin/gosu cloudron:cloudron npm start --prefix /app/code