resource "aws_instance" "ec2_instance" {
  ami                    = "ami-05d72852800cbf29e"            
  instance_type          = "t2.micro"
  key_name               = var.key_name
  security_groups = [aws_security_group.security_group.name]
  tags = {
    Name = "webServer"
  }
}
