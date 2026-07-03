output "vm_name" {
  value = google_compute_instance.myvm.name
}

output "vm_internal_ip" {
  value = google_compute_instance.myvm.network_interface[0].access_config[0].network_ip
}

output "vm_external_ip" {
  value = google_compute_instance.myvm.network_interface[0].access_config[0].nat_ip
}