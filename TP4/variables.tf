#variables.tf : toutes les déclarations de variables
variable "student_name" {
  description = "Prénom de l'étudiant"
  type        = string
  default     = "flavie"
}
variable "promo_name" {
  description = "Promo de l'étudiant"
  type        = string
  default     = "READL006"
}
variable "environment" {
  description = "environment de déploiement"
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "Valeurs : dev, test, prod."
  }
}
variable "region" {
  description = "Région"
  type        = string
  default     = "us-east-1"
  validation {
    condition     = var.region == "us-east-1"
    error_message = "Seule us-east-1 est autorisée"
  }
}
variable "vpc_cidr" {
  description = "CIDR"
  type        = string
  default     = "10.10.0.0/16"
}
variable "subnets" {
  type = map(object({
    cidr_block = string
    az         = string
    public     = bool
  }))
  default = {
    public = {
      cidr_block = "10.10.1.0/24"
      az         = "us-east-1a",
    public = true }
    private = {
      cidr_block = "10.10.2.0/24"
      az         = "us-east-1b",
    public = false }
  }
}
variable "key_pair_name" {
  description = "ssh key pairing for nginx"
  type        = string
  default     = "tf-flavie-dev-key"
}