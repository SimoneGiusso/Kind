# Kind

To run K8s using docker containers - where each container is a k8s node

[Documentation](https://kind.sigs.k8s.io)

## Get started

```sh
# --wait: wait control plane to be ready
kind create cluster --wait 5m --config kind-example-config.yaml
kind get clusters
kubectl get nodes -o wide
```

```sh
kind delete cluster --name my-cluster 
```

## Kubernetes Cloud Provider for KIND

KIND doesn't offer capabilities for testing all the features that depend on cloud-providers, specifically the Load Balancers. `cloud-provider-kind` aims to fill this gap

```sh
sudo /opt/homebrew/bin/cloud-provider-kind
```

Will monitor all KIND clusters and `Services` with Type `LoadBalancer` and create corresponding LoadBalancer containers that will expose those Services.