locals {
  owner       = var.owner
  environment = var.environment
  tags = {
    environment = "webhook"
    project     = "dotnetapp"
  }
}