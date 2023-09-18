ACTION=$1

STACK_NAME=aws-devops-capstone-stack

if [[ $ACTION == "update" ]]; then
    aws cloudformation update-stack \
        --stack-name $STACK_NAME \
        --template-body file://infra/cluster.yml \
        --parameters file://infra/cluster-params.json \
        --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM"

elif [[ $ACTION == "create" ]]; then
    aws cloudformation create-stack \
        --stack-name $STACK_NAME \
        --template-body file://infra/cluster.yml \
        --parameters file://infra/cluster-params.json \
        --capabilities 'CAPABILITY_IAM' 'CAPABILITY_NAMED_IAM'
fi