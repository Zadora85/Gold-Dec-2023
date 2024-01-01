resource "aws_instance" "web_server" {
  ami                    = "ami-079db87dc4c10ac91"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg_project.id]
  key_name               = "us-east-kp"
  user_data              = file("script.sh")
}

resource "aws_security_group" "sg_project" {
  name        = "sg_project"
  description = "allow access on ports 8080 and 22"
  vpc_id      = "vpc-0760c055dfc13919e"

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "allow http access"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "zadora9868y-gold-week20project"

  tags = {
    Name = "Jenkins"
  }
}
