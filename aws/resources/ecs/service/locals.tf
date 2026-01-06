locals {
  name = "${var.application}-${var.environment}"

  tags = merge(
    {
      Environment = var.environment
      Application = var.application
      ManagedBy   = "Terraform"
      Owner       = "SRE"
    },
    var.tags_extra
  )
}
