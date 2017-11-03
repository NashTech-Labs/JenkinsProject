#! /bin/bash

USER_NAME="akhilvijayan05"

PASSWORD="123456"

IMAGE_NAME="play_image"

IMAGE_TAG="latest"

docker login -u $USER_NAME -p $PASSWORD 

docker build -t $IMAGE_NAME .

docker tag $IMAGE_NAME $USER_NAME/$IMAGE_NAME:$IMAGE_TAG

docker push $USER_NAME/$IMAGE_NAME:$IMAGE_TAG


