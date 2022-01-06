# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster
data "aws_eks_cluster" "myEksCluster" {
  name = module.eks.cluster_id
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth
data "aws_eks_cluster_auth" "myEksClusterAuth" {
  name = module.eks.cluster_id
}

# https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest
module "eks" {
  source           = "terraform-aws-modules/eks/aws"
  version          = "17.24.0"
  create_eks       = true
  cluster_name     = local.cluster_name
  cluster_version  = var.cluster_version
  subnets          = module.vpc.private_subnets
  tags             = local.tags
  vpc_id           = module.vpc.vpc_id
  enable_irsa      = var.eks_enable_irsa
  write_kubeconfig = false
  map_roles        = var.eks_map_roles
  map_users        = var.eks_map_users
  map_accounts     = var.eks_map_accounts
  worker_groups = [
    {
      name                          = "worker-group-1"
      instance_type                 = "t2.xlarge"
      asg_desired_capacity          = 3
      additional_security_group_ids = []
    }
  ]
}