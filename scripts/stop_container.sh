#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps -q)

# Check if a container ID was found
if [ -n "$containerid" ]; then
    docker rm -f $containerid
    echo "Previous container deleted"
else
    echo "No running container found"
fi

