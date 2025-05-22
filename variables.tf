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

variable "deployer_role_arn" {
  description = "ARN da role que aplicará o terraform (ex: GitHub Actions)"
  type        = string
}
