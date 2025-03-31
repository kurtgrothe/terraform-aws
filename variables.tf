# Input Variables
# AWS Region
variable "aws_region" {
    description = "Region that AWS resources are operating from"
    type = string
    default = "us-west-2"  
}

# AWS EC2 Instance Type
variable "instance_type" {
    description = ""
    type = string
    default = "t3.micro"  
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
    description = "AWS EC2 Key Pair terraform-key.pem"
    type = string
    default = "terraform-key"  
}