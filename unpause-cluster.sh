#!/bin/bash

# Get all containers running the kind nodes
containers=$(docker ps -a --filter "name=kind-" --format "{{.Names}}")

# Start each container
for container in $containers; do
  echo "Starting $container"
  docker start $container
done
