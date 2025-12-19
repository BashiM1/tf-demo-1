resource "aws_instance" "web-server" {
  ami           = "ami-09968b16214ef62ce" # eu-west-3
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.ping.id, aws_security_group.web_server.id]
  subnet_id = aws_subnet.public-eu-west-3a.id
  associate_public_ip_address = true
  



  user_data = file("user_data.sh")

    tags = {
    Name = "antoinette-ec2"
  }
}
