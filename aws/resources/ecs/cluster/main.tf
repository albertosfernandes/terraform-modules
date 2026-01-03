module "ecs_cluster" {
  source  = "terraform-aws-modules/ecs/aws//modules/cluster"
  version = "~> 5.0"

  # Nome do cluster
  cluster_name = var.cluster_name

  # Capacity Providers
  fargate_capacity_providers = {
    FARGATE = {
      weight = var.enable_fargate_spot ? 50 : 100
    }

    FARGATE_SPOT = var.enable_fargate_spot ? {
      weight = 50
    } : null
  }

  tags = local.tags
}
