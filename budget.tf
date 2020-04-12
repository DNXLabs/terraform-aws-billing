resource "aws_budgets_budget" "budget" {
  count = var.enable_budget ? 1 : 0
  name              = "${var.org_name}-Monthly Budget"
  budget_type       = "COST"
  limit_amount      = var.budget_ammount
  limit_unit        = "USD"
  # time_period_start = formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")""
  time_period_start = "2020-04-01_12:00"
  time_unit         = var.budget_time

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = var.budget_threshold_percentage
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = [var.budget_email]
    subscriber_sns_topic_arns  = [var.budget_sns]
  }
}
