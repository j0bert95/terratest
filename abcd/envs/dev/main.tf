module "app" {
  source = "../../modules/app"

  project_id     = var.project_id
  env_name       = var.env_name
  machine_type   = var.machine_type
  instance_count = var.instance_count
  zone           = var.zone
  subnet_link    = module.network.subnet_link
  ssh_keys       = "gcp:${trimspace(file("${path.module}/../keys/*"))}"
}

module "network" {
  source = "../../modules/network"

  project_id   = var.project_id
  project_name = var.project_name
  network_name = var.network_name
  subnet_name  = var.subnet_name
  region       = var.region
  subnet_cidr  = var.subnet_cidr
}