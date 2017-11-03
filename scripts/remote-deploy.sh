#! /bin/bash

USER_NAME="akhilvijayan05"

PASSWORD="123456"

CONTAINER_NAME="play_container"

IMAGE_NAME="play_image"

IMAGE_TAG="latest"

ACTIVE_PORT="9000"

sudo docker stop $CONTAINER_NAME || echo "Container already stopped"

sudo docker rm -f $CONTAINER_NAME || echo "Container already removed"

sudo docker login -u $USER_NAME -p $PASSWORD

sudo docker pull $USER_NAME/$IMAGE_NAME:$IMAGE_TAG

sudo docker run -d --name $CONTAINER_NAME -p $ACTIVE_PORT:$ACTIVE_PORT $USER_NAME/$IMAGE_NAME:$IMAGE_TAG
