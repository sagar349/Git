# Use a base image that supports Terraform and Vault installation
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install Terraform
RUN apt-get update && apt-get install -y \
    wget unzip gnupg software-properties-common \
    && wget -q -O - https://apt.releases.hashicorp.com/gpg | gpg --dearmor > /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    && echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list \
    && apt-get update && apt-get install -y terraform vault \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set up a non-root user (optional, recommended for Codespaces)
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME
