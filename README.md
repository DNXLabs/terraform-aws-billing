# terraform-aws-billing

[![Lint Status](https://github.com/DNXLabs/terraform-aws-billing/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-billing/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-billing)](https://github.com/DNXLabs/terraform-aws-billing/blob/master/LICENSE)

This terraform module is a AWS Billing Module that add billing related aws resources.

The following resources will be created:

- IAM billing role
- AWS Budget
- SNS Budget Alarm

In addition you have the option to:

- Enable or not AWS Budget cost control
- Set The amount of cost or usage being measured for a budget
- Set The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY.
- Set The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB.
- E-Mail addresses to notify the budget
- Enable or not AWS Chatbot. If true, will create aws chatboot and integrate to slack
- Set Slack channel id to send budget notfication using AWS Chatbot
- Set Slack workspace id to send budget notfication using AWS Chatbot
- Set the Maximum CLI/API session duration

![AWS Billing HLD](images/hld_billing.png)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| budget\_ammount | The amount of cost or usage being measured for a budget. | `string` | `"0"` | no |
| budget\_email | E-Mail addresses to notify. | `string` | `""` | no |
| budget\_threshold\_percentage | The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. | `string` | `"60"` | no |
| budget\_time | The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY. | `string` | `"MONTHLY"` | no |
| enable\_budget | Flag to enable AWS Budget cost control | `string` | `"false"` | no |
| enable\_chatbot\_slack | If true, will create aws chatboot and integrate to slack | `string` | `"false"` | no |
| idp\_account\_id | Account ID for IDP account to allow assuming normal users for billing | `any` | n/a | yes |
| org\_name | Name for this organization | `any` | n/a | yes |
| role\_max\_session\_duration | Maximum CLI/API session duration | `string` | `"43200"` | no |
| slack\_channel\_id | Sclack channel id to send budget notfication using AWS Chatbot | `string` | `""` | no |
| slack\_workspace\_id | Sclack workspace id to send budget notfication using AWS Chatbot | `string` | `""` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-billing/blob/master/LICENSE) for full details.