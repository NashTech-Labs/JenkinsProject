#! /bin/bash

CONTAINER_NAME="play_container"

IMAGE_NAME="play_image"

IMAGE_TAG="latest"

ACTIVE_PORT="9000"

docker stop $CONTAINER_NAME || echo "Container already stopped"

docker rm -f $CONTAINER_NAME || echo "Container already removed"

docker pull $IMAGE_NAME:$IMAGE_TAG

docker run -d --name $CONTAINER_NAME -p $ACTIVE_PORT:$ACTIVE_PORT $IMAGE_NAME:$IMAGE_TAG
