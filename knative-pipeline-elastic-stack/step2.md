## Install Knative Pipeline CRD

Knative Pipeline is one component of the Knative project.
Pipeline will replace Knative Build.

`kubectl apply -f https://raw.githubusercontent.com/mgreau/katacoda-scenarios/master/knative-pipeline-elastic-stack/assets/knative/knative-pipeline-release-050118.yaml`{{execute}}

## Check pods

Check that Knative Pipeline pods are running:

`kubectl get pods --watch --namespace=knative-build-pipeline`{{execute}}