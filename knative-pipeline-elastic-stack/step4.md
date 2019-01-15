## Deploy and Run a Task

This is an example from the build-pipeline GitHub repository

### Deploy Resources and Tasks and Pipeline

#### Resources (git)

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/resources.yaml`{{execute}}

#### Tasks

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/output-tasks.yaml`{{execute}}

#### Pipeline

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/output-pipeline.yaml`{{execute}}

### Run the pipeline

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/run/output-pipeline-run.yaml`{{execute}}

### Get access to the logs and metrics from the UI with Kibana

[Kibana - Infrastructure](https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/app/infra#/home?_g=()&waffleOptions=(groupBy:!(),metric:(type:cpu),nodeType:pod))
