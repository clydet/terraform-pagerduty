########################
## escalation policy
########################

resource "pagerduty_escalation_policy" "pd_escalation_policy" {
  name      = "${var.name}"
  num_loops = "${var.num_loops}"
  teams     = ["${var.teams}"]

  rule {
    escalation_delay_in_minutes = "${var.escalation_delay}"

    target {
      type = "schedule_reference"
      id   = "${var.target_schedule_01}"
    }
  }

  rule {
    escalation_delay_in_minutes = "${var.escalation_delay}"

    target {
      type = "schedule_reference"
      id   = "${var.target_schedule_02}"
    }
  }
}
