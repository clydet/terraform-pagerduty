########################
## user
########################

module "user_eqrs_management_be1284" {
  source    = "../../modules/pagerduty/user"
  name      = "Greg Eccleston"
  email     = "greg.eccleston@cms.hhs.gov"
  mobile    = "7153099237"
  job_title = "EQRS Management"
}

resource "pagerduty_team_membership" "membership_eqrs_management_be1284" {
  user_id = module.user_eqrs_management_be1284.id
  team_id = pagerduty_team.pd_team_eqrs_management.id
}

module "user_eqrs_fc_kj1410" {
  source    = "../../modules/pagerduty/user"
  name      = "Clyde Tedrick"
  email     = "iamclyde@gmail.com"
  mobile    = "7153099237"
  job_title = "Foundation Components Liaison"
}

resource "pagerduty_team_membership" "membership_eqrs_fc_kj1410" {
  user_id = module.user_eqrs_fc_kj1410.id
  team_id = pagerduty_team.pd_team_eqrs_fc.id
}

module "user_eqrs_fc_ic6319" {
  source    = "../../modules/pagerduty/user"
  name      = "Andrew Yochum"
  email     = "ayochum@flexion.us"
  mobile    = "7153099237"
  job_title = "Foundation Components Lead"
}

resource "pagerduty_team_membership" "membership_eqrs_fc_ic6319" {
  user_id = module.user_eqrs_fc_ic6319.id
  team_id = pagerduty_team.pd_team_eqrs_fc.id
}