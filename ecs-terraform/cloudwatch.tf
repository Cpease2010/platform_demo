resource "aws_cloudwatch_log_group" "ecs_log_group" {
  name              = "/ecs/platform-demo"
  retention_in_days = 30  # You can configure the retention period as needed
}
