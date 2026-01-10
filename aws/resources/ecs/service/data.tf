data "aws_ecs_task_definition" "bootstrap" {
  task_definition = "ecs-bootstrap"
}