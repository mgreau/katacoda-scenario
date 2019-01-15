## Check Knative Logs and Metrics

Make sure the Kibana pod is running:

`kubectl get pods --watch --namespace=default`{{execute}}

```
kibana-897c7d55c-rgs74                1/1       Running   0          6m
```

Then, go to the [Kibana Infrastructure UI](https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/app/infra#/home?_g=()&waffleOptions=(groupBy:!((field:kubernetes.namespace,type:terms)),metric:(type:cpu),nodeType:pod)) to get access to the logs and metrics:

* Then on each pod, you can check the logs and metrics

You should get access to the metrics and logs of the `default` namespace where the Elastic components are deployed and to the `knative-build-pipeline` namespace where the Knative Pipeline controllers and webhooks pods are deployed