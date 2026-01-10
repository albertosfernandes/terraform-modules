# ECS Service
Este módulo foi construído para auxiliar na construção de cluster ECS na AWS, uma vez que as principais configurações estão descritas no módulo e para utilizar é recomendável com uso de Terragrunt passando apenas as variáveis necessárias conforme abaixo.

## Exemplo de uso

```
terraform {
  source = "git::https://github.com/albertosfernandes/terraform-modules.git//aws/resources/ecs/service?ref=v1.1.2"
}

include {
  path   = find_in_parent_folders()
  expose = true
}

dependency "cluster" {
  config_path = "../cluster"
}

inputs = {
  environment = include.locals.environment
  application = "fast-api"

  service_name = "fast-api-prod"

  cluster_arn = dependency.cluster.outputs.cluster_arn

  # NÃO define task_definition_arn
  # Pipeline será o dono

  desired_count = 1

  subnets         = ["subnet-.....", "subnet-....."]
  security_groups = ["sg-....."]

  assign_public_ip = true

  tags_extra = include.locals.common_tags
}
```