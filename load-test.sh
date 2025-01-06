#!/bin/bash

# Define the URL for the /health API endpoint
URL="long-load-reliability-probes.apps.ocp.labtelco.stc/health"

# Loop to send requests every 2 seconds
while true; do

  curl -s "$URL"
  
  sleep 2
done
