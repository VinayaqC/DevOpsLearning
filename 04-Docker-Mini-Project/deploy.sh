#!/bin/bash

echo "Stopping old container..."
docker stop mini-project 2>/dev/null

echo "Removing old container..."
docker rm mini-project 2>/dev/null

echo "Building new image..."
docker build -t vinayaq/mini-project:v1 .

echo "Running new container..."
docker run -d -p 8083:80 --name mini-project vinayaq/mini-project:v1

echo "Deployment complete"

