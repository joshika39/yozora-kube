#!/bin/bash

if ! command -v docker &> /dev/null
then
    echo "Error: docker could not be found"
    exit 1
fi

if ! xclip -version &> /dev/null
then
    echo "Warning: xclip could not be found"
    echo "Note: xclip is used to copy the suggested command to clipboard"
fi

if ! command -v kubelet &> /dev/null
then
    echo "Error: kubelet could not be found"
    exit 1
fi

if ! command -v kubectl &> /dev/null
then
    echo "Error: kubectl could not be found"
    exit 1
fi


kubelet --version
kubectl version

if ! systemctl is-enabled --quiet kubelet
then
    echo "Warning: kubelet is not enabled"
    echo "Note: kubelet is not set to start on boot"
    echo " -> enable with: sudo systemctl enable kubelet"
    xclip -sel clip <<< "sudo systemctl enable kubelet"
fi
