# This script creates an Azure Arc resource to connect a Kubernetes cluster to Azure
# Documentation: https://aka.ms/AzureArcK8sDocs

# Log into Azure
az login

# Set Azure subscription
az account set --subscription 7c27312f-200e-47f6-a855-c308a26f1493

# Create Resource group
az group create --name ToB_Demo --location eastus

# Create connected cluster
az connectedk8s connect --name tob_democluster --resource-group ToB_Demo --location eastus