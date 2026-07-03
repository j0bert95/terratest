output "network_id" {
  value = google_compute_network.myvcn.id
}

output "network_name" {
  value = google_compute_network.myvcn.name
}

output "subnet_id" {
  value = google_compute_subnetwork.mysubnet.id
}

output "subnet_name" {
  value = google_compute_subnetwork.mysubnet.name
}

output "subnet_cidr" {
  value = google_compute_network.mysubnet.ip_cidr_range
}

output "subnet_link" {
  value = google_compute_subnetwork.mysubnet.self_link
}