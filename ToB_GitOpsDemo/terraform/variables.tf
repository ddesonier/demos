variable "resource_group_name_prefix" {
  default       = "rg"
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default       = "eastus"
  description   = "Location of the resource group."
}

variable "agent_count" {
    default = 3
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8stest"
}

variable cluster_name {
    default = "k8stest"
}

variable resource_group_name {
    default = "azure-k8stest"
}

variable location {
    default = "Central US"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}

variable ARM_APP_ID {
   type        = string
   description = "AKS Service Principal App ID"
}

variable ARM_CLIENT_SECRET {
   type        = string
   description = "AKS Service Principal Secret"
}


#$env:TF_VAR_ARM_CLIENT_ID=$sp.AppId
#$env:TF_VAR_ARM_SUBSCRIPTION_ID=$subID
##$env:TF_VAR_ARM_TENANT_ID=$tenantID
#$env:TF_VAR_ARM_CLIENT_SECRET=$sp.PasswordCredentials.SecretText
#$env:TF_VAR_ARM_OBJECT_ID=$sp.ID
#aks_service_principal_client_secret = $(env:ARM_CLIENT_SECRET)

#aks_service_principal_object_id = $(env:ARM_OBJECT_ID)