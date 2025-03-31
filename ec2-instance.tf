resource "aws_instance" "ec2_app" {
    ami           = data.aws_ami.amz_linux2.id
    instance_type = var.instance_type
    user_data     = file("${path.module}/app1-install.sh")
    key_name = var.instance_keypair
    vpc_security_group_ids = [
        aws_security_group.rhel_httpd_sg.id
    ]

    tags = {
        Name = "EC2 Web"
    }  
}
