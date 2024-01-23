variable "user_name" {
  type    = string
  default = "ram"
}

variable "user_path" {
  type    = string
  default = "/"
}

variable "user_list" {
  type    = list(any)
  default = ["u1", "u2", "u3", "u4"]
}

variable "user_tags" {
  type = map(any)
  default = {
    project = "Eco"
    team    = "DevOps"
    type    = "infra"
  }
}

variable "user_any" {
  type = any
  default = {
    u1 = "abc"
    u2 = ["a1", "a2", "a3", "a4"]
    u3 = 50
  }
}
