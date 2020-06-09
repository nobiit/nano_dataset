#!/usr/bin/env bash

set -e

export DOCKER_USERNAME=armwhl

export PLATFORM=linux/amd64

if [[ $# -gt 0 ]]; then
  DOCKER_USERNAME="${1}"
fi

if [[ $# -gt 1 ]]; then
  PLATFORM="${2}"
fi

docker buildx build \
  --cache-from "type=local,src=/tmp/.buildx-cache" \
  --cache-to "type=local,dest=/tmp/.buildx-cache" \
  --platform "${PLATFORM}" \
  --build-arg BASE="${DOCKER_USERNAME}/base:latest" \
  --tag "dataset" \
  --load \
  .
