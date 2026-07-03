#resource "google_project" "my_project" {
#  name            = var.project_name
#  project_id      = var.project_id
#  org_id          = var.organization_id
#  deletion_policy = "DELETE"
#  auto_create_network = "false"
#}

module "network" {
  source = "../modules/network"

  project_id   = var.project_id
  project_name = var.project_name
  region       = var.region

  network_name = "${var.project_id}-vpc"
  subnet_name  = "${var.project_id}-sub"
  subnet_cidr  = var.cidr
}