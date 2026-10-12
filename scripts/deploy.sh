#!/bin/sh
set -e

echo "Deploying application to local Kubernetes..."
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

echo "Deployment completed."
kubectl get pods -n devops-demo
