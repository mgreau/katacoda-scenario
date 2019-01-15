## Install Knative Pipeline CRD

Knative Pipeline is one component of the Knative project.
Pipeline will replace Knative Build.

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/knative/knative-pipeline-release-150118.yaml`{{execute}}

## Check pods

Check that Knative Pipeline pods are running:

`kubectl get pods --namespace=knative-build-pipeline`{{execute}}

Follow the pods step y using the `Knative Pods` tab.