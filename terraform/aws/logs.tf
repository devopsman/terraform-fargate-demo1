# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "fg_log_group" {
  name              = "/ecs/fg-app"
  retention_in_days = 30

  tags = {
    Name = "fg-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "fg_log_stream" {
  name           = "fg-log-stream"
  log_group_name = aws_cloudwatch_log_group.fg_log_group.name
}

