module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name    = "lanchonete"
  cluster_version = "1.31"

  cluster_endpoint_public_access = true

  cluster_compute_config = {
    enabled    = true
    node_pools = ["general-purpose"]
  }

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  tags = {
    Environment = "prod"
    Terraform   = "true"
  }
}