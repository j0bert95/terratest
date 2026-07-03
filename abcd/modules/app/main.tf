resource "google_compute_instance" "myvm" {

  count = var.instance_count

  name         = "${var.project_id}-${var.env_name}-vm${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "projects/oracle-linux-cloud/global/images/family/oracle-linux-9"
    }
  }

  network_interface {
    subnetwork = var.subnet_link
    access_config {}
  }

}