resource "aws_ecs_service" "this" {
  name            = var.service_name
  cluster         = var.cluster_arn
  task_definition = coalesce(
    var.task_definition_arn,
    data.aws_ecs_task_definition.bootstrap.arn
  )
  desired_count   = var.desired_count

  launch_type = "FARGATE"

  network_configuration {
    subnets         = var.subnets
    security_groups = var.security_groups
    assign_public_ip = var.assign_public_ip
  }

  lifecycle {
    ignore_changes = [
      task_definition,
      desired_count
    ]
  }

  tags = local.tags
}
