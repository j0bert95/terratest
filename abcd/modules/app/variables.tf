variable "instance_count" {
  type    = number
  default = 1
}

variable "machine_type" {
  type = string
}

variable "zone" {
  type = string
}

variable "subnet_link" {
  type = string
}

variable "project_id" {
  type = string
}

variable "env_name" {
  type = string
}

variable "boot_disk_size" {
  type    = number
  default = 50
}

variable "boot_disk_type" {
  type    = string
  default = "pd-balanced"
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "assign_public_ip" {
  type    = bool
  default = false
}