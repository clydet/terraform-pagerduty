variable "name" {
  description = "Name of schedule. Make it meaningful"
}

variable "time_zone" {
  default = "America/Los_Angeles"
}

variable "oncall_start" {
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_virtual_start" {
  default = "2018-01-29T12:00:00-08:00"
}

variable "rotation_length" {
  default = 604800
}

variable "users" {
  type = list
}
