variable "acr_name" {
  description = "The name of the Azure Container Registry."
  type        = string
  default     = "mycontainerregistry20" # You can adjust this default value as needed
}
variable "acr_sku" {
  description = "The SKU of the Azure Container Registry."
  type        = string
  default     = "Premium"
}
variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster."
  type        = string
  default     = "example-aks1" # You can adjust this default value as needed
}
variable "aks_node_pool_name" {
  description = "The name of the default node pool in AKS."
  type        = string
  default     = "default"
}
variable "aks_node_count" {
  description = "The number of nodes in the default node pool."
  type        = number
  default     = 1
}
variable "aks_vm_size" {
  description = "The size of the VM instances in the AKS node pool."
  type        = string
  default     = "Standard_D2_v2"
}
variable "role_definition_name" {
  description = "The role definition name for the role assignment."
  type        = string
  default     = "AcrPull"
}#AcrPull authotizes the kubernetes to pull dosker image from the container

variable "aks-name" {
  description = "azure kubernetes cluster name"
  type        = string
  default     = "kubernetes-service"
}
variable "rg-name" {
  description = "azure kubernetes cluster name"
  type        = string
  default     = "rg"
}
variable "owner" {
  description = "Pj owner"
  type        = string
  default     = "rasheed"
}
variable "environment" {
  description = "pj environment"
  type        = string
  default     = "dev"
}
variable "location" {
  description = "resource location"
  type        = string
  default     = "uksouth"
}
variable "vnet-name" {
  description = "virtual network"
  type        = string
  default     = "vnet"
}
variable "subnet-name" {
  description = "webhook subnet"
  type        = string
  default     = "subnet"
}

