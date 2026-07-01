resource "google_compute_network" "myvcn" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "mysubnet" {
  name          = "${var.project_id}-subad1"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = google_compute_network.myvcn.id
}

resource "google_compute_firewall" "myfirewall" {
  name    = "${var.project_id}-firewall"
  network = google_compute_network.myvcn.id

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_tags = ["foo"]

}
