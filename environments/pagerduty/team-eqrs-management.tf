########################
## schedule
########################

module "schedule_eqrs_management" {
  source = "../../modules/pagerduty/schedule"
  name   = "${var.team_eqrs_management} OnCall"

  users = [
    module.user_eqrs_management_be1284.id
  ]
}