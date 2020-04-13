resource "aws_cloudformation_stack" "tf_chatbot" {
  count = var.enable_budget ? 1 : 0
  name = "terraform-chatbot-${var.org_name}"
  parameters = {
    ConfigurationNameParam = var.org_name
    IamRoleArnArnParam     = "arn:aws:iam::804075007277:role/service-role/chatbot"
    SnsTopicArnParam       = aws_sns_topic.budget_updates.*.arn[0]
    SlackChannelIdParam    = var.slack_channel_id
    SlackWorkspaceIdParam  = var.slack_workspace_id
  }
  template_body = file("${path.module}/cf-chatbot.yml")
}
