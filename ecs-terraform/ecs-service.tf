resource "aws_ecs_service" "platform_demo_service" {
  name            = "platform-demo-service"
  cluster         = aws_ecs_cluster.ecs_cluster.id
  task_definition = aws_ecs_task_definition.platform_demo_task.arn
  desired_count   = 2
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = module.vpc.public_subnets
    security_groups = [aws_security_group.ecs_task_sg.id]
    assign_public_ip = true
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.ecs_target_group.arn
    container_name   = "platform-demo-container"
    container_port   = 5000
  }

  depends_on = [
    aws_lb_listener.http
  ]
}
