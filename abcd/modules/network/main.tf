resource "google_compute_network" "myvcn" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "mysubnet" {
  name    = var.subnet_name
  cidr    = var.subnet_cidr
  region  = var.region
  network = google_compute_network.myvcn.id
}

resource "google_compute_firwall" "myfirewall" {
  name    = var.firwall_name
  network = google_compute_network.myvcn.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

}
