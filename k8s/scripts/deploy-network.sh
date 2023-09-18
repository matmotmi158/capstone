#!/bin/bash
ACTION=$1
STACK_NAME=aws-devops-capstone-network-stack

if [ $ACTION = "update" ]; then
    aws cloudformation update-stack \
        --stack-name $STACK_NAME --template-body file://infra/network.yml \
        --parameters file://infra/network-params.json

elif [ $ACTION = "create" ]; then
    aws cloudformation create-stack \
        --stack-name $STACK_NAME --template-body file://infra/network.yml \
        --parameters file://infra/network-params.json
fi