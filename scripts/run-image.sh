#/bin/bash
TAG=$1

if [ ! $TAG ]; then
    TAG="latest"
fi

docker run -p "8000:80" maian1891/aws-devops-capstone-app:$TAG