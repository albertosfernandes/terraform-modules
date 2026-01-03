locals {
  name_prefix = "${var.application}-${var.environment}"

  mandatory_tags = {
    Environment = var.environment
    Application = var.application
    ManagedBy   = "Terraform"
    Owner       = "SRE"
  }

  tags = merge(local.mandatory_tags, var.tags_extra)
}
