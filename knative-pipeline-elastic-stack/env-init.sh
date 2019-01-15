#!/bin/bash
set -e

# Start Kubernetes
launch.sh

# Deploy kube-state-metrics
kubectl apply -f  https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/k8s/kube-state-metrics.yaml

# Create files for tutorial
mkdir -p hello-world-task
touch hello-world-task/task.yaml
touch hello-world-task/task-run.yaml

# Download Elastic docker images
TAG=6.5.4
docker pull docker.elastic.co/elasticsearch/elasticsearch:${TAG}
docker pull docker.elastic.co/kibana/kibana:${TAG}
docker pull docker.elastic.co/beats/filebeat:${TAG}
docker pull docker.elastic.co/beats/metricbeat:${TAG}
