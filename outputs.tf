#Terraform Outputs

# EC2 Instance Public IP
output "instance_public_ip" {
 # Search attributes (list site)
  description = "EC2 Instance Public IP"
  value = aws_instance.ec2_app.public_ip
}
# EC2 Instance Public DNS
output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.ec2_app.public_dns
}
