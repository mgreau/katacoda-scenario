## Hello World Task

This is the Hello World example from the build-pipeline GitHub repository.

### Create Task and TaskRun

* Create the Task
** Copy the content to the file
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
        - "Hello World!"
</pre>

* Create the TaskRun

<pre class="file" data-filename="./hello-world-task/task-run.yaml" data-target="replace">
apiVersion: pipeline.knative.dev/v1alpha1
kind: TaskRun
metadata:
  name: echo-hello-world-task-run
spec:
  taskRef:
    name: echo-hello-world
  trigger:
    type: manual
</pre>

* Apply 

`kubectl apply -f ./hello-world-task`{{execute T1}}

### Get access to the logs from the UI with Kibana

Kibana - Infrastructure:
* https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/app/infra#/home?_g=()&waffleOptions=(groupBy:!(),metric:(type:cpu),nodeType:pod)
