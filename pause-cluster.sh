#!/bin/bash

# Get all containers running the kind nodes
containers=$(docker ps --filter "name=kind-" --format "{{.Names}}")

# Stop each container
for container in $containers; do
  echo "Stopping $container"
  docker stop $container
done
