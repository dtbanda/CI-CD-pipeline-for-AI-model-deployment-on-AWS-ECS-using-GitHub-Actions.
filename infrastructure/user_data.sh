#!/bin/bash

# Update the package list and install Docker
apt-get update -y
apt-get install -y docker.io

# Start Docker service
systemctl start docker
systemctl enable docker

# Optional: Add ubuntu user to the docker group to avoid sudo (for debugging/logging)
usermod -aG docker ubuntu

# Pull your app image (update this with your actual image tag)
docker pull yourdockerhubusername/project2-ai-pipeline:latest

# Run the container (modify port and environment vars if needed)
docker run -d \
  --name ai-pipeline-app \
  -p 80:8000 \
  yourdockerhubusername/project2-ai-pipeline:latest
