## Check Knative Logs and Metrics

Make sure the Kibana pod is running:

`kubectl get pods --watch --namespace=default`{{execute}}

```
kibana-897c7d55c-rgs74                1/1       Running   0          6m
```

Then, go to the  [Kibana UI](https://[[HOST_SUBDOMAIN]]-30601-[[KATACODA_HOST]].environments.katacoda.com/) to get access to the logs and metrics:

* Click on the Infrastructure menu
* Click on `Kubernetes`
* You can filter pods by `namespace`
* Then on a pod, you can check the logs and metrics

You should get access to the metrics and logs of the `default` namespace where the Elastic components are deployed and to the `knative-build-pipeline` namespace where the Knative Pipeline controllers and webhooks pods are deployed