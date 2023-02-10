#!/bin/bash
set -ex

echo "Start RSSHub"
chown -R cloudron:cloudron /home/cloudron/.npm
exec /usr/local/bin/gosu cloudron:cloudron npm start --prefix /app/code
