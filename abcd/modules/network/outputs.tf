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