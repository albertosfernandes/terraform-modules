## Exemplo de uso

```
module "ecs" {
  source = "git::https://github.com/albertosfernandes/terraform-modules.git//aws/resources/ecs?ref=v1.0.0"

  environment   = "prod"
  application   = "payments"
  cluster_name  = "payments-prod-cluster"
}
```