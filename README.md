## install jest
https://dev.to/ivadyhabimana/setup-jest-and-react-testing-library-in-a-react-project-a-step-by-step-guide-1mf0

## How to run

### Local
Build docker image: > ./scripts/build-image.sh
Deploy to local cluster > kubectl apply -f k8s/local
Forwarding port to localhost:8080 > kubectl port-forward service/aws-app-service 8080:80

### AWS
For AWS CICD pipeline with CircleCI we will need setup infrastructure first:
1. Create network infrastructure
   > chmod +x ./scripts/deploy-network.sh
   > ./scripts/deploy-network.sh create

2. Create cluster infrastructure (EKS)
   > chmod +x ./scripts/deploy-cluster.sh
   > ./scripts/deploy-cluster.sh create

3. Add EKS cluster to local kube config
   > aws eks update-kubeconfig --region us-east-1 --name aws-devops-capstone-cluster

4. Switch local kube context to aws eks cluster
   > kubectl config get-contexts
   > kubectl config use-context $$CONTEXT_NAME

5. Build docker image:
   > ./scripts/build-image.sh

6. Deploy to local cluster
   > kubectl apply -f k8s/local

7. Forwarding port to localhost:8080
   > kubectl port-forward service/aws-app-service 8080:80

## Project preview

You can see my project quick view [here](./docs/PROJECT_QUICKVIEW.md)