## Observe Knative Logs and Metrics

Make sure the Kibana pod is running (`Elastic Pods` tab):

`kubectl get pods --namespace=default`{{execute T2}}

```
kibana-897c7d55c-rgs74     1/1    Running   0     6m
```

Then, go to the [Kibana Infrastructure UI at:
* https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/app/infra#/home?_g=()&waffleOptions=(groupBy:!((field:kubernetes.namespace,type:terms)),metric:(type:cpu),nodeType:pod to get access to the logs and metrics:

* Then on each pod, you can check the logs and metrics

You should get access to the metrics and logs of the `default` namespace where the Elastic components are deployed and to the `knative-build-pipeline` namespace where the Knative Pipeline controllers and webhooks pods are deployed