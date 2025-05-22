module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "lanchonete-eks"
  cluster_version = "1.29"
  subnet_ids      = var.private_subnet_ids
  vpc_id          = var.vpc_id

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.micro"]
      min_size       = 1
      max_size       = 3
      desired_size   = 1
    }
  }

  manage_aws_auth_configmap = true

  aws_auth_roles = [
    {
      rolearn  = var.deployer_role_arn
      username = "admin"
      groups   = ["system:masters"]
    }
  ]
}
