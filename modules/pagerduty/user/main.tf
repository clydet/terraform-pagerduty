########################
## user
########################

resource "pagerduty_user" "pd_user" {
  name      = var.name
  email     = var.email
  role      = var.role
  job_title = var.job_title
}

resource "pagerduty_user_contact_method" "pd_contact_phone" {
  user_id      = pagerduty_user.pd_user.id
  type         = "phone_contact_method"
  country_code = "+1"
  address      = var.mobile
  label        = "Mobile"
}

resource "pagerduty_user_contact_method" "pd_contact_sms" {
  user_id      = pagerduty_user.pd_user.id
  type         = "sms_contact_method"
  country_code = "+1"
  address      = var.mobile
  label        = "Mobile"
}
