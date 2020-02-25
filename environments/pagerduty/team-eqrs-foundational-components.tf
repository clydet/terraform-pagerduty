########################
## schedule
########################

module "schedule_eqrs_fc" {
  source = "../../modules/pagerduty/schedule"
  name   = "${var.team_eqrs_fc} OnCall"

  users = [
    module.user_eqrs_fc_kj1410.id,
    module.user_eqrs_fc_ic6319.id
  ]
}

########################
## escalation policy
########################

resource "pagerduty_escalation_policy" "escalation_policy_eqrs_error" {
  name      = "${var.team_eqrs_fc} Escalation Policy"
  num_loops = 2
  teams     = [pagerduty_team.pd_team_eqrs_fc.id]

  rule {
    escalation_delay_in_minutes = 5

    target {
      type = "schedule_reference"
      id   = module.schedule_eqrs_fc.id
    }
  }

  rule {
    escalation_delay_in_minutes = 5

    target {
      type = "schedule_reference"
      id   = module.schedule_eqrs_management.id
    }
  }
}

########################
## service
########################

module "service_eqrs_prod" {
  source            = "../../modules/pagerduty/service"
  name              = "Prod ${var.team_eqrs_fc} - High Urgency"
  escalation_policy = pagerduty_escalation_policy.escalation_policy_eqrs_error.id
}

########################
## service integration
########################

# module "service_integration_newrelic" {
#   source  = "../../modules/pagerduty/service_integration"
#   name    = "New Relic"
#   service = module.service_eqrs_prod.id
# }

module "service_integration_eqrs_email" {
  source  = "../../modules/pagerduty/service_integration"
  name    = "Email"
  service = module.service_eqrs_prod.id
  email   = "noreply@ctedrick.pagerduty.com"
}

# module "service_integration_eqrs_cloudwatch" {
#   source  = "../../modules/pagerduty/service_integration"
#   name    = "CloudWatch"
#   service = module.service_eqrs_prod.id
# }

# module "service_integration_eqrs_slack" {
#   source  = "../../modules/pagerduty/service_integration"
#   name    = "Slack"
#   service = module.service_eqrs_prod.id
# }
