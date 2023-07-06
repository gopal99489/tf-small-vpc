# EC2 instance creating 
resource "aws_instance" "small-ec2" {
  ami           = "ami-07f701d2aadc08e67"
  instance_type = "t3.micro"
  subent_id = aws_subnet.small-pub-sn-A.subent_id
  vpc_security_group_ids = [aws_security_group.small.sg.id]
  key_name = "tf"
  user_data = file("webapp.sh")
  tags = {
    Name = "small-ec2"
  }
}
