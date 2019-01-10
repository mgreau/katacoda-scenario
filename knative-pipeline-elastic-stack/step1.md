# Install Elastic Components #


## Deploy Elasticsearch

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/elasticsearch.yaml`{{execute}}

## Deploy Kibana

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/kibana.yaml`{{execute}}


## Deploy Beats (filebeat and metricsbeat)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/filebeat.yaml`{{execute}}

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/metricbeat.yaml`{{execute}}

## Wait for the Kibana to be running

Access to the  [Kibana UI](https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/)


## Install Knative Pipeline

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/knative/knative-pipeline-release-050118.yaml`{{execute}}