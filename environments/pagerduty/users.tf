########################
## user
########################

module "user_eqrs_management_be1284" {
  source    = "../../modules/pagerduty/user"
  name      = "Greg Eccleston"
  email     = "greg.eccleston@cms.hhs.gov"
  mobile    = "7153099237"
  job_title = "EQRS Management"
  teams     = "${pagerduty_team.pd_team_eqrs_management.id}"
}

module "user_eqrs_fc_kj1410" {
  source    = "../../modules/pagerduty/user"
  name      = "Clyde Tedrick"
  email     = "iamclyde@gmail.com"
  mobile    = "7153099237"
  job_title = "Foundation Components Liaison"
  teams     = pagerduty_team.pd_team_eqrs_fc.id
}

module "user_eqrs_fc_ic6319" {
  source    = "../../modules/pagerduty/user"
  name      = "Andrew Yochum"
  email     = "ayochum@flexion.us"
  mobile    = "7153099237"
  job_title = "Foundation Components Lead"
  teams     = pagerduty_team.pd_team_eqrs_fc.id
}