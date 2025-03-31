data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "rhel_httpd_sg" {
  name = "rhel_httpd_sg"
  description = "Allow httpd and ssh traffic"
  vpc_id = data.aws_vpc.default.id

  tags = {
    Name = "rhel_httpd_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.rhel_httpd_sg.id

  cidr_ipv4 = "0.0.0.0/0"
  from_port = 22
  to_port = 22
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "allow_httpd" {
  security_group_id = aws_security_group.rhel_httpd_sg.id

  cidr_ipv4 = "0.0.0.0/0"
  from_port = 80
  to_port = 80
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.rhel_httpd_sg.id

  cidr_ipv4 = "0.0.0.0/0"
  from_port = 443
  to_port = 443
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.rhel_httpd_sg.id

  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}