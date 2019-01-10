#!/bin/bash
set -e

# Download Elastic docker images
function warmUp()
{
  TAG=6.5.4
  for REPONAME in elasticsearch/elasticsearch kibana/kibana beats/filebeat beats/metricbeat
  do
      IMAGENAME=$(basename $REPONAME)
      echo "Download elastic/${IMAGENAME}:${TAG}"
      docker pull docker.elastic.co/${REPONAME}:${TAG}
  done
}

warmUp()
source <(kubectl completion bash)
clear