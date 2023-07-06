# Base image
FROM jenkins/jenkins:latest

# Switch to root user
USER root

# Install dependencies for Docker
RUN apt-get update \
    && apt-get install -y apt-transport-https \
    && apt-get install -y ca-certificates \
    && apt-get install -y curl \
    && apt-get install -y gnupg-agent \
    && apt-get install -y software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - \
    && add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install -y docker-ce docker-ce-cli containerd.io

# Switch back to Jenkins user
USER jenkins