#!/bin/bash
set -eu
chown -R cloudron:cloudron /app/code
echo "Start RSSHub"
exec /usr/local/bin/gosu cloudron:cloudron npm start --prefix /app/code
