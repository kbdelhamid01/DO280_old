#!/bin/bash

# Get a list of all node IPs
NODE_IPS=$(oc get nodes -o jsonpath='{.items[*].status.addresses[?(@.type=="InternalIP")].address}')

# Loop through each node and check Chrony status
for IP in $NODE_IPS; do
  echo "Checking Chrony on node: $IP"
  ssh core@$IP << EOF
    echo "Node: $(hostname)"
    sudo systemctl is-active chronyd && echo "Chrony service is running" || echo "Chrony service is not running"
    sudo chronyc tracking
    sudo chronyc sources
EOF
  echo "-----------------------------------------------------"
done

