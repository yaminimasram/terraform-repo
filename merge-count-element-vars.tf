variable "cidr_block" {
  type    = string
  default = ("10.0.0.0/16")
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "namespace" {
  type    = string
  default = "Dev"
}

variable "public_subnet" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet" {
  type    = list(string)
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "common_tags" {
  type = map(string)
  default = {
    "team"       = "DevOps"
    "Department" = "Development"
  }
}
