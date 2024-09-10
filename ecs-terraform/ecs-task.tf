resource "aws_ecs_task_definition" "platform_demo_task" {
  family                   = "platform-demo-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  cpu                      = 512
  memory                   = 1024

  container_definitions = <<DEFINITION
  [
    {
      "name": "platform-demo-container",
      "image": "${var.ecr_image_url}",
      "cpu": 512,
      "memory": 1024,
      "essential": true,
      "portMappings": [
        {
          "containerPort": 5000,
          "protocol": "tcp"
        }
      ],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/platform-demo",
          "awslogs-region": "${var.region}",
          "awslogs-stream-prefix": "pd-ecs"
        }
      }
    }
  ]
  DEFINITION
}

