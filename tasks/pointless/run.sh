#!/bin/bash

echo "I'm a pointless task"
echo "and I'm going to sleep now..."
echo "for ${POINTLESS_SLEEP_TIME:=5} seconds..." >&2

sleep "${POINTLESS_SLEEP_TIME}"

echo "I'm done..."
