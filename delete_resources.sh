#!/bin/bash

kubectl delete -f web-deployment.yaml
kubectl delete -f postgres-deployment.yaml
kubectl delete -f redis-deployment.yaml
kubectl delete -f web-service.yaml
kubectl delete -f postgres-service.yaml
kubectl delete -f redis-service.yaml

# kubectl apply -f web-deployment.yaml
# kubectl apply -f postgres-deployment.yaml
# kubectl apply -f redis-deployment.yaml
# kubectl apply -f web-service.yaml
# kubectl apply -f postgres-service.yaml
# kubectl apply -f redis-service.yaml

# kubectl get pods
# kubectl get deployments
# kubectl get services

