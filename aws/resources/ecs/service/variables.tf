variable "environment" {
  type        = string
  description = "Environment name"
}

variable "application" {
  type        = string
  description = "Application name"
}

variable "cluster_arn" {
  type        = string
  description = "ECS Cluster ARN"
}

variable "service_name" {
  type        = string
}

variable "task_definition_arn" {
  type        = string
}

variable "desired_count" {
  type    = number
  default = 2
}

variable "subnets" {
  type = list(string)
}

variable "security_groups" {
  type = list(string)
}

variable "target_group_arn" {
  type = string
}

variable "assign_public_ip" {
  type    = bool
  default = false
}

variable "tags_extra" {
  type    = map(string)
  default = {}
}
