#!/bin/bash

(( EUID != 0 )) && exec sudo -- "$0" "$@"

rm -rf /etc/kubernetes
rm -rf /var/lib/kubernetes
rm -rf /var/lib/kubelet
rm -rf /var/lib/etcd

rm ~/.kube



