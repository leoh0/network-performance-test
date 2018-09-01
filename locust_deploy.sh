#!/bin/bash

helm install --namespace pt --name nodejs-tester -f locust_values.yaml ./charts/locust

export NODE_PORT=$(kubectl get svc -n pt nodejs-tester-master-svc -o jsonpath='{.spec.ports[?(@.name=="master-web")].nodePort}')
export NODE_IP=$(kubectl get no -o jsonpath="{.items[0].status.addresses[0].address}")
export LOCUST_URL=http://$NODE_IP:$NODE_PORT/

echo $LOCUST_URL
