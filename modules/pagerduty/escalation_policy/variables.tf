variable "name" {
  description = "Name of escalation policy. Make it meaningful"
}

variable "num_loops" {
  default = 2
}

variable "teams" {}

variable "escalation_delay" {
  default = 15
}

variable "target_schedule_01" {}

variable "target_schedule_02" {}
