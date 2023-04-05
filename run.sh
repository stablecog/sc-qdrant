#!/bin/bash

# Make sure only 1 of INITIAL_PEER and BOOTSTRAP_PEER is set in environment
if [ -n "$INITIAL_PEER" ] && [ -n "$BOOTSTRAP_PEER" ]; then
    echo "ERROR: Both INITIAL_PEER and BOOTSTRAP_PEER are set. Only one should be set."
    exit 1
fi

# If neither INITIAL_PEER or BOOTSTRAP_PEER is set, then this is also a problem
if [ -z "$INITIAL_PEER" ] && [ -z "$BOOTSTRAP_PEER" ]; then
    echo "ERROR: Neither INITIAL_PEER or BOOTSTRAP_PEER are set. One should be set."
    exit 1
fi

if [ -n "$INITIAL_PEER" ]; then
  /qdrant/qdrant --uri $INITIAL_PEER
else
  /qdrant/qdrant --bootstrap $BOOTSTRAP_PEER
fi