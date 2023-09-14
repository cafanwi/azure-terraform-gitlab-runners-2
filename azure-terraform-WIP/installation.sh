#!/bin/bash
# Update package lists
apt-get update

# Install dependencies
apt-get install -y curl bash-completion git unzip wget

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

# Install Python and Pip
apt-get install -y python3 python3-pip

# Install Terraform
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt-get install terraform

# Install AzureCli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# install fluxcli
wget https://github.com/fluxcd/flux/releases/download/1.25.4/fluxctl_linux_amd64 -O fluxctl
sudo chmod +x fluxctl

echo "Installation complete!"
