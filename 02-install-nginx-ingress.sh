#!/bin/bash
set -e

# Add Helm repo
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# Install Ingress Controller
helm upgrade --install nginx-ingress ingress-nginx/ingress-nginx \
  --namespace ingress-nginx --create-namespace \
  --set controller.service.type=NodePort \
  --set controller.service.nodePorts.https=32443 \
  --set controller.service.nodePorts.http=30080

# Wait for pod
kubectl get pods -n ingress-nginx -w
