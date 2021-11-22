locals {
  vpc_name                                = "${var.name_prefix}-vpc"
  cluster_name                            = "${var.name_prefix}-cluster"
  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}
