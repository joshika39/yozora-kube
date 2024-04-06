#!/bin/bash

(( EUID != 0 )) && exec sudo -- "$0" "$@"

ss -tulpn | grep LISTEN | grep -e kube -e 1025 -e 6443


