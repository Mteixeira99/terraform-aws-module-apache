variable "vpc_id" {
  type = string
}

variable "ip_address" {
  type = string
  description = "Provide your IP eg. 213.22.196.155"
}

variable "instance_type" {
  type = string
}

variable "public_key" {
  type = string
}

variable "server_name" {
  type = string
  default = "Apache Server"
}