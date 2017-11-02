#! /bin/bash

USER_NAME=akhilvijayan05

PASSWORD=lihkavij

IMAGE_NAME=playdemo

IMAGE_TAG=latest

docker login -u $USER_NAME -p $PASSWORD 

docker build -t $IMAGE_NAME .

docker tag $IMAGE_NAME $USER_NAME/$IMAGE_NAME:$IMAGE_TAG

docker push $USER_NAME/$IMAGE_NAME:$IMAGE_TAG


