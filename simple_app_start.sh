#!/bin/bash
echo "nodejs simple app deployments"
kubectl apply -f nodejs_deployment.yaml

echo "nodejs simple app server"
kubectl apply -f nodejs_simple_service.yaml
