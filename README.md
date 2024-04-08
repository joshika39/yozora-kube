# Kubernetes manager for Arch Linux

This is a simple script collection to manage Kubernetes on Arch Linux.

## Features

```bash
# Cleanup all Kubernetes related resources
./cleanup.sh

# Check the status of the Kubernetes cluster
./status.sh

# Query the ports used by Kubernetes
./ports.sh
```

### Dependencies

- `kubectl`
- `kubeadm`
- `kubelet`
- `haproxy`
