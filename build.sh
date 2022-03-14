#!/bin/bash

docker buildx build \
  --pull \
  --platform linux/amd64,linux/arm64 \
  -t beginor/aria2:latest \
  -t beginor/aria2:1.36.0 \
  --push .
