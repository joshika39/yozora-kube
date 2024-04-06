#!/bin/bash

if ! command -v kubelet &> /dev/null
then
    echo "kubelet could not be found"
    exit 1
fi

if ! systemctl is-active --quiet kubelet
then
    echo "kubelet is not running"
    exit 1
fi

if ! command -v kubectl &> /dev/null
then
    echo "kubectl could not be found"
    exit 1
fi


kubelet --version
kubectl version
