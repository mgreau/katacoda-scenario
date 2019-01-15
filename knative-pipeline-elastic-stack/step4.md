## Hello World Task

This is the Hello World example from the build-pipeline GitHub repository.

### Create Task and TaskRun

<pre class="file" data-filename="task.yaml" data-target="replace">
apiVersion: pipeline.knative.dev/v1alpha1
kind: Task
metadata:
  name: echo-hello-world
spec:
  steps:
    - name: echo
      image: ubuntu
      command:
        - echo
      args:
        - "hello world"
</pre>


#### Tasks

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/output-tasks.yaml`{{execute}}

#### Pipeline

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/output-pipeline.yaml`{{execute}}

### Run the pipeline

`kubectl apply -f https://raw.githubusercontent.com/knative/build-pipeline/master/examples/run/output-pipeline-run.yaml`{{execute}}

### Get access to the logs and metrics from the UI with Kibana

[Kibana - Infrastructure](https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/app/infra#/home?_g=()&waffleOptions=(groupBy:!(),metric:(type:cpu),nodeType:pod))
