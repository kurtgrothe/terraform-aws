# Find the most recent Amazon Linux 2 AMI

data "aws_ami" "amz_linux2" {
  most_recent = true
  owners      = ["amazon"]

  # Filter AMIs by their name pattern (Amazon Linux 2, HVM, GP2)
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  # Filter AMIs that use EBS as root device type
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  # Filter for AMIs with hardware virtualization
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  # Ensure the architecture is x86_64
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}