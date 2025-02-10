resource "aws_ecs_service" "my_service" {
  name            = "my-service"
  cluster         = aws_ecs_cluster.my_cluster.id
  task_definition = aws_ecs_task_definition.my_task.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    subnets          = [aws_subnet.public_subnet.id]
    security_groups = [aws_security_group.allow_http.id]
    assign_public_ip = true  # Assign a public IP to ECS task
  }

  tags = {
    Name = "my-ecs-service"
  }
}
