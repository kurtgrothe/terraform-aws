resource "aws_instance" "ec2_app" {
    ami           = "ami-0f9d441b5d66d5f31"
    instance_type = "t3.micro"
    user_data     = file("${path.module}/app1-install.sh")

    tags = {
        Name = "EC2 Web Demo"
    }  
}
