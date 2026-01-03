# Cluster ECS Fargate
Este módulo foi construído para auxiliar na construção de cluster ECS na AWS, uma vez que as principais configurações estão descritas no módulo e para utilizar é recomendável com uso de Terragrunt passando apenas as variáveis necessárias conforme abaixo.

## Exemplo de uso

```
module "ecs" {
  source = "git::https://github.com/albertosfernandes/terraform-modules.git//aws/resources/ecs?ref=v1.0.0"

  environment   = "prod"
  application   = "payments"
  cluster_name  = "payments-prod-cluster"
}
```