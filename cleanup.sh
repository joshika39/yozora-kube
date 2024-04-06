#!/usr/bin/env bash

(( EUID != 0 )) && exec sudo -E -- "$0" "$@"

[[ -d /etc/kubernetes ]] && rm -rf /etc/kubernetes
[[ -d /etc/cni ]] && rm -rf /etc/cni
[[ -d /etc/etcd ]] && rm -rf /etc/etcd
[[ -d /etc/systemd/system/kubelet.service.d ]] && rm -rf /etc/systemd/system/kubelet.service.d
[[ -d /etc/systemd/system/kube-apiserver.service.d ]] && rm -rf /etc/systemd/system/kube-apiserver.service.d
[[ -d /etc/systemd/system/kube-controller-manager.service.d ]] && rm -rf /etc/systemd/system/kube-controller-manager.service.d
[[ -d /etc/systemd/system/kube-scheduler.service.d ]] && rm -rf /etc/systemd/system/kube-scheduler.service.d
[[ -d /etc/systemd/system/kube-proxy.service.d ]] && rm -rf /etc/systemd/system/kube-proxy.service.d
[[ -d /etc/systemd/system/kubelet.service.d ]] && rm -rf /etc/systemd/system/kubelet.service.d

[[ -d /var/lib/etcd ]] && rm -rf /var/lib/etcd
[[ -d /var/lib/kubelet ]] && rm -rf /var/lib/kubelet
[[ -d /var/lib/kube-proxy ]] && rm -rf /var/lib/kube-proxy
[[ -d /var/lib/kubernetes ]] && rm -rf /var/lib/kubernetes
[[ -d /var/lib/cni ]] && rm -rf /var/lib/cni
[[ -d /var/log/pods ]] && rm -rf /var/log/pods
[[ -d /var/log/kube-audit ]] && rm -rf /var/log/kube-audit
[[ -d /var/log/kube-apiserver ]] && rm -rf /var/log/kube-apiserver
[[ -d /var/log/kube-controller-manager ]] && rm -rf /var/log/kube-controller-manager
[[ -d /var/log/kube-scheduler ]] && rm -rf /var/log/kube-scheduler
[[ -d /var/log/kube-proxy ]] && rm -rf /var/log/kube-proxy
[[ -d /var/log/kubelet ]] && rm -rf /var/log/kubelet
[[ -d /var/log/kubernetes ]] && rm -rf /var/log/kubernetes
[[ -d /var/log/calico ]] && rm -rf /var/log/calico
[[ -d /var/log/flannel ]] && rm -rf /var/log/flannel
[[ -d /var/log/etcd ]] && rm -rf /var/log/etcd
[[ -d /var/log/pods ]] && rm -rf /var/log/pods
[[ -d /var/log/audit ]] && rm -rf /var/log/audit
[[ -d /var/log/kube-audit ]] && rm -rf /var/log/kube-audit
[[ -d /var/log/kube-apiserver ]] && rm -rf /var/log/kube-apiserver
[[ -d /var/log/kube-controller-manager ]] && rm -rf /var/log/kube-controller-manager
[[ -d /var/log/kube-scheduler ]] && rm -rf /var/log/kube-scheduler
[[ -d /var/log/kube-proxy ]] && rm -rf /var/log/kube-proxy
[[ -d ~/.kube ]] && rm -rf ~/.kube

