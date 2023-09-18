#/bin/bash
TAG=$1

if [ ! $TAG ]; then
    TAG="latest"
fi
pwd
docker build -f docker/Dockerfile . -t matmotmi158/capstone-app:$TAG