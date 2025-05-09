#!/bin/bash

NETWORK_NAME="barbell_bridge"
if docker network inspect "$NETWORK_NAME" >/dev/null 2>&1; then
  echo "✅ Docker network '$NETWORK_NAME' already exists."
else
  echo "🔧 Creating Docker network '$NETWORK_NAME'..."
  docker network create --driver bridge --attachable "$NETWORK_NAME"
  echo "✅ Network '$NETWORK_NAME' created."
fi
