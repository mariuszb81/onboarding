#!/bin/bash
set -e

NAMESPACE="devops-training"
RELEASE_NAME="mypg"

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm upgrade --install $RELEASE_NAME bitnami/postgresql \
  --namespace $NAMESPACE \
  --create-namespace \
  -f values.yaml
