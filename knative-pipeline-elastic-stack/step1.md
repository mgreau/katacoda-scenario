# Install Elastic Components #

In this step, you will deploy the Elastic components used to monitor your cluster:
* Elasticsearch
* Kibana
* Filebeat and Metricsbeat

## Deploy Elasticsearch

![Elasticsearch Logo](https://www.elastic.co/assets/blt9a26f88bfbd20eb5/icon-elasticsearch-bb.svg)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/elasticsearch.yaml`{{execute T1}}

## Deploy Kibana

![Kibana Logo](https://www.elastic.co/assets/blt282ae2420e32fc38/icon-kibana-bb.svg)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/kibana.yaml`{{execute T1}}


## Deploy Beats (Lightweight Data Shippers)

![Beats Logo](https://www.elastic.co/assets/blt121ead33d4ed1f55/icon-beats-bb.svg)

### Filebeat: Lightweight Shipper for Logs

[Filebeat](https://www.elastic.co/products/beats/filebeat)

![Filebeat Logo](https://www.elastic.co/assets/blt86db0e71b172187c/icon-filebeat-bb.svg)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/filebeat.yaml`{{execute T1}}

### Metricbeat

![Metricbeat Logo](https://www.elastic.co/assets/blt6263e629ff423e0d/icon-metricbeat-bb.svg)

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/elastic/metricbeat.yaml`{{execute T1}}


## Check pods

`kubectl get pods --watch --namespace=default`{{execute T2}}

Follow the pods step y using the `Elastic Pods` tab.

Go to the next step while the Elastic components are starting