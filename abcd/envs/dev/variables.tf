variable "zone" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "env_name" {
  type = string
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "project_id" {
  type = string
}

variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "network_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}