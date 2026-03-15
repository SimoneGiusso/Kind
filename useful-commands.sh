kind load docker-image my-app:latest my-db:latest my-cache:latest --name my-cluster # Load local Docker images into the kind cluster
docker exec -it <NODE-NAME> crictl images # List images in the kind cluster node
#!/usr/bin/env bash
# Useful commands for working with a local kind cluster

# Create cluster from example config
kind create cluster --wait 5m --config kind-example-config.yaml

# List kind clusters and nodes
kind get clusters
kubectl get nodes -o wide

# Delete cluster
kind delete cluster --name my-cluster

# Port-forward example (run from another terminal)
# kubectl port-forward svc/my-service 8080:80

kubectl cluster-info --context kind-my-cluster # Interact with the kind cluster using kubectl

kubectl export logs ./logs # Export logs from the kind cluster to a local directory