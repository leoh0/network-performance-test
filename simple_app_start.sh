#!/bin/bash

kubectl get ns pt || kubectl create ns pt

echo "nodejs simple app deployments in pt"
kubectl apply -f nodejs_deployment.yaml

echo "nodejs simple app server in pt"
kubectl apply -f nodejs_simple_service.yaml
