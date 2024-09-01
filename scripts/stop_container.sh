#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)

# Debugging output
echo "Container ID(s): $containerid"

# Check if a container ID was found
if [ -n "$containerid" ]; then
    echo "Stopping and removing container(s) with ID(s): $containerid"
    docker rm -f $containerid
    echo "Previous container(s) deleted"
else
    echo "No running container found"
fi

