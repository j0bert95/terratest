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