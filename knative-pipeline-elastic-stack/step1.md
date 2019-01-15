# Install Elastic Components #

In this step, you will deploy the Elastic components used to monitor your cluster:
* Elasticsearch
* Kibana
* Filebeat and Metricsbeat

## Deploy Elasticsearch

![Elasticsearch Logo](/katacoda-scenarios/scenarios/knative-pipeline-elastic-stack/assets/elastic/img/icon-elasticsearch-bb.svg)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/elasticsearch.yaml`{{execute}}

## Deploy Kibana

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/kibana.yaml`{{execute}}


## Deploy Beats (filebeat and metricsbeat)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/filebeat.yaml`{{execute}}

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/metricbeat.yaml`{{execute}}


## Check pods

`kubectl get pods --watch --namespace=default`{{execute}}

Follow the pods step y using the `Elastic Pods` tab.

Go to the next step while the Elastic components are starting