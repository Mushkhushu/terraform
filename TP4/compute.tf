# compute.tf : AWS-instance, AMI, key pair, EC2 et user_data

resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.instance_type
  subnet_id                   = module.network.public_subnet_id
  vpc_security_group_ids      = [module.network.web_security_group_id]
  associate_public_ip_address = true
  key_name                    = var.key_pair_name
  user_data                   = file("user-data.sh")
  root_block_device {
    volume_size = local.volume_size
    volume_type = "gp3"
    encrypted   = true
  }
  monitoring = local.enable_monitoring
  tags       = { Name = "${local.prefix}-ec2-web" }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical's AWS account ID
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
# here
resource "aws_security_group" "imported" {
  name        = "tf-flavie-dev-sg-import"
  description = "SG importe depuis la console"
  vpc_id      = aws_vpc.main.id
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
