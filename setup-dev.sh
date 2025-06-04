#!/bin/bash
# AutoPilotOps Dev Environment Setup Script

echo "🚀 Starting AutoPilotOps Dev Environment Setup..."

# Exit on error
set -e

echo "🔧 Installing required tools (ensure you have sudo privileges)"

# Install kubectl
if ! command -v kubectl &> /dev/null
then
    echo "Installing kubectl..."
    curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    chmod +x kubectl
    sudo mv kubectl /usr/local/bin/
fi

# Install Helm
if ! command -v helm &> /dev/null
then
    echo "Installing Helm..."
    curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
fi

# Install Terraform
if ! command -v terraform &> /dev/null
then
    echo "Installing Terraform..."
    wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
    unzip terraform_1.5.7_linux_amd64.zip
    sudo mv terraform /usr/local/bin/
    rm terraform_1.5.7_linux_amd64.zip
fi

# Install Minikube
if ! command -v minikube &> /dev/null
then
    echo "Installing Minikube..."
    curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    sudo install minikube-linux-amd64 /usr/local/bin/minikube
    rm minikube-linux-amd64
fi

# Install Poetry (Python env tool)
if ! command -v poetry &> /dev/null
then
    echo "Installing Poetry..."
    curl -sSL https://install.python-poetry.org | python3 -
    export PATH="$HOME/.local/bin:$PATH"
fi

echo "✅ All core tools installed. Run 'minikube start' to boot up your local cluster."
