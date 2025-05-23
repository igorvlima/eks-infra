variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_id" {
  description = "ID da VPC já existente"
  type        = string
}

variable "private_subnet_ids" {
  description = "Subnets privadas para o cluster EKS"
  type        = list(string)
}

variable "environment" {
  description = "Ambiente de deploy (ex: dev, prod)"
  type        = string
  default     = "prod"
}
