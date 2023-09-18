#/bin/bash
TAG=$1

if [ ! $TAG ]; then
    TAG="latest"
fi

echo $DOCKER_PASSWORD | docker login -u "matmotmi158" --password-stdin docker.io
docker push matmotmi158/capstone-app:$TAG