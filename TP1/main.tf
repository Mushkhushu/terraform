terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
}
provider "aws" {
    region = "us-east-1"
    default_tags {
        tags = {
            StudentName = "flavie"
            PromoName = "READL006"
            course = "TF-2026-04"
        }
    }
}
resource "aws_vpc" "main" {
    cidr_block = "10.10.0.0/16"

    tags = {
        Name = "tf-flavie-dev-vpc"
    }
}