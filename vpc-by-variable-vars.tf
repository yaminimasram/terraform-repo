variable "my_vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_support" {
  type    = string
  default = "true"
}

variable "vpc_hostname" {
  type    = string
  default = "true"
}

variable "vpc_tags" {
  type = map(string)
  default = {
    name = "MyVpc"
  }
}

variable "vpc_igw_tags" {
  type = map(string)
  default = {
    name = "MyIGW"
  }
}

variable "vpc_az_1" {
  type    = string
  default = "ap-northeast-2a"
}

variable "vpc_cidr_az_1" {
  type    = string
  default = "10.0.1.0/24"
}

variable "vpc_pub_tags" {
  type = map(string)
  default = {
    name = "PublicSubnetAZ1"
  }
}

variable "vpc_az_2" {
  type    = string
  default = "ap-northeast-2b"
}

variable "vpc_pub_cidr_2" {
  type    = string
  default = "10.0.2.0/24"
}

variable "vpc_pub_2_tags" {
  type = map(string)
  default = {
    name = "PublicSubnetAZ2"
  }
}

variable "vpc_pri_cidr" {
  type    = string
  default = "10.0.3.0/24"
}

variable "vpc_pri_tags" {
  type = map(string)
  default = {
    name = "PrivateSubneAZ1"
  }
}

variable "vpc_pri_cidr_az2" {
  type    = string
  default = "10.0.4.0/24"
}

variable "vpc_pri2_tags" {
  type = map(string)
  default = {
    name = "PrivateSubnetAZ2"
  }
}

variable "vpc_routetable" {
  type    = string
  default = "0.0.0.0/0"
}

variable "vpc_routetable_tags" {
  type = map(string)
  default = {
    name = "PublicRouteTable"
  }
}

variable "vpc_sg_tags" {
  type = map(string)
  default = {
    name = "PrivateSecurityGroup"
  }
}
