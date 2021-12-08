locals {
  vpc_name                                = "${var.name_prefix}-${var.env}-vpc"
  cluster_name                            = "${var.name_prefix}-${var.env}-cluster"
  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}
