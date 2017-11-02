#! /bin/bash

CONTAINER_NAME="play_container"

IMAGE_NAME="play_image"

IMAGE_TAG="latest"

ACTIVE_PORT="9000"

sudo docker stop $CONTAINER_NAME || echo "Container already stopped"

sudo docker rm -f $CONTAINER_NAME || echo "Container already removed"

sudo docker pull $IMAGE_NAME:$IMAGE_TAG

sudo docker run -d --name $CONTAINER_NAME -p $ACTIVE_PORT:$ACTIVE_PORT $IMAGE_NAME:$IMAGE_TAG
