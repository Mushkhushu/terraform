module "network" {
  source       = "./modules/network"
  student_name = var.student_name
  vpc_cidr     = var.vpc_cidr
  environment  = var.environment
  subnets      = var.subnets
}