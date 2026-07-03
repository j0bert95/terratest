output "project_id" {
  description = "GCP Project ID"
  value       = var.project_id
}

output "network_name" {
  description = "VPC network name"
  value       = module.network.network_name
}

output "subnet_cidr" {
  description = "Subnet CIDR"
  value       = module.network.subnet_cidr
}