#!/bin/sh
set -e

if [ "$1" = "mongod" ]; then
    chown -R mongodb:mongodb .
    exec gosu mongodb "$@"
fi

exec "$@"
