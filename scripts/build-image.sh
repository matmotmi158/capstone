#/bin/bash
TAG=$1

if [ ! $TAG ]; then
    TAG="latest"
fi
pwd
docker build -f docker/Dockerfile . -t maian1891/aws-devops-capstone-app:$TAG