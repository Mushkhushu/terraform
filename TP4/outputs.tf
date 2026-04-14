# outputs.tf : IP publique, URL HTTP et identifiants utiles
output "public_subnet_id" {
  description = "ID su subnet public"
  value       = aws_subnet.main["public"].id
}
output "private_subnet_id" {
  description = "ID du subnet privé"
  value       = aws_subnet.main["private"].id
}
output "security_group_web_id" {
  description = "ID du Security Group Web"
  value       = aws_security_group.web.id
}
output "vpc_id" {
  description = "ID du VPC créé"
  value       = aws_vpc.main.id
}
output "public_ip" {
  description = "Adresse IP publique de l'instance EC2"
  value       = aws_instance.web.public_ip
}

output "http_url" {
  description = "URL HTTP pour accéder à l'instance EC2"
  value       = "http://${aws_instance.web.public_ip}"
}

# ─── Compute ─────────────────────────────────────────────────────────────────

output "instance_public_ip" {
  description = "IP publique de l'instance EC2"
  value       = aws_instance.web.public_ip
}

output "instance_url" {
  description = "URL HTTP de l'instance (nginx)"
  value       = "http://${aws_instance.web.public_ip}"
}

output "ssh_command" {
  description = "Commande SSH pour se connecter à l'instance"
  #  value       = "ssh -i ~/.ssh/id_rsa_tp2 ubuntu@${aws_instance.web.public_ip}"
  value = "ssh -i ~/.ssh/id_rsa_tp4 ubuntu@${aws_instance.web.public_ip}"
}