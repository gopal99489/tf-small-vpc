# EC2 instance creating 
resource "aws_instance" "small-ec2" {
  ami           = "ami-08e5424edfe926b43"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.small-pub-sn-A.id
  vpc_security_group_ids = [aws_security_group.small-sg.id]
  key_name = "tf"
  user_data = file("webapp.sh")
  tags = {
    Name = "small-ec2"
  }
}
