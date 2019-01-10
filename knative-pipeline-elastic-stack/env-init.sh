#!/bin/bash
set -e

# Download Elastic docker images
TAG=6.5.4
docker pull docker.elastic.co/elasticsearch/elasticsearch:${TAG}
docker pull docker.elastic.co/kibana/kibana:${TAG}
docker pull docker.elastic.co/beats/filebeat:${TAG}
docker pull docker.elastic.co/beats/metricbeat:${TAG}