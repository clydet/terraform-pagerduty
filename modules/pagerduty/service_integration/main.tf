########################
## service integration
########################

data "pagerduty_vendor" "pd_vendor" {
  name = var.name
}

resource "pagerduty_service_integration" "pd_service_integration" {
  name              = data.pagerduty_vendor.pd_vendor.name
  vendor            = data.pagerduty_vendor.pd_vendor.id
  service           = var.service
  integration_email = var.email
}
