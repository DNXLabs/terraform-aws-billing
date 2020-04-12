variable "org_name" {
  description = "Name for this organization"
}

variable "idp_account_id" {
  description = "Account ID for IDP account to allow assuming normal users for billing"
}

variable "role_max_session_duration" {
  description = "Maximum CLI/API session duration"
  default     = "43200"
}

variable "enable_budget" {
  description = "Flag to enable AWS Budget cost control"
  default     = "false"
}
variable "budget_ammount" {
  description = "The amount of cost or usage being measured for a budget."
  default     = "0"
}
variable "budget_time" {
  description = "The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY."
  default     = "MONTHLY"
}
variable "budget_threshold_percentage" {
  description = "The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB."
  default     = "60"
}
variable "budget_email" {
  description = "E-Mail addresses to notify."
  default     = ""
}


