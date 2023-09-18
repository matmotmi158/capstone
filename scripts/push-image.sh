#/bin/bash
TAG=$1

if [ ! $TAG ]; then
    TAG="latest"
fi

echo $DOCKER_PASSWORD | docker login -u "maian1891" --password-stdin docker.io
docker push maian1891/aws-devops-capstone-app:$TAG