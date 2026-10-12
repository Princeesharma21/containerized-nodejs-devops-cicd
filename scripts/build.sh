#!/bin/sh
set -e

echo "Building Docker image..."
docker build -t devops-node-app:1.0 .

echo "Build completed successfully."
