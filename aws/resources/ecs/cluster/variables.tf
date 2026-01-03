variable "environment" {
  description = "Ambiente (dev, hml, prod)"
  type        = string
}

variable "application" {
  description = "Nome da aplicação"
  type        = string
}

variable "cluster_name" {
  description = "Nome do cluster ECS"
  type        = string
}

variable "enable_fargate_spot" {
  description = "Habilitar Fargate Spot"
  type        = bool
  default     = true
}

variable "tags_extra" {
  description = "Tags extras para recursos"
  type        = map(string)
  default     = {}
}


