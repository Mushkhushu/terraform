# locals.tf : préfixe de nommage et expressions calculées
locals {
  prefix            = "tf-${var.student_name}-${var.environment}"
  instance_type     = var.environment == "prod" ? "t3.small" : "t3.micro"
  volume_size       = var.environment == "prod" ? 20 : 10
  enable_monitoring = var.environment != "dev"
}