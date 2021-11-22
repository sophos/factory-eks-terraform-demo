provider "aws" {
  region = var.region
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.myEksCluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.myEksCluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.myEksClusterAuth.token
}