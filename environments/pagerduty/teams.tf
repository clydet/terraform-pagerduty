########################
## variable
########################

variable "team_eqrs_management" {
  default = "EQRS Management"
}

variable "team_eqrs_fc" {
  default = "EQRS Foundational Components"
}

########################
## team
########################

resource "pagerduty_team" "pd_team_eqrs_management" {
  name = "Team ${var.team_eqrs_management}"
}

resource "pagerduty_team" "pd_team_eqrs_fc" {
  name = "Team ${var.team_eqrs_fc}"
}
