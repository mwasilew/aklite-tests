#!/bin/bash

PATTERN=$1
FOUND=""
while [ -z "${FOUND}" ]
do
    FOUND="$(journalctl -u aktualizr-lite | grep '${PATTERN}')"
    sleep 1
    echo "sleeping"
done
