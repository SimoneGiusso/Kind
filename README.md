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