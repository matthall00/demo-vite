FROM node:20-bullseye

# Install basic development tools
RUN apt update && apt install -y \
    less \
    git \
    procps \
    vim \
    curl \
    wget \
    sudo

# Ensure default `node` user has access to `sudo`
RUN echo "node ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Use node as the default user
USER node

# Set working directory
WORKDIR /workspace
