#!/bin/sh

. ./image-env.sh

docker run -it --rm -p 5001:5000 -e COMPONENT_Backend_HOST=$(hostname) $REGISTRY/$REGISTRY_USER_ID/$IMAGE_NAME:$IMAGE_VERSION