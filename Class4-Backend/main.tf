provider "aws" {
  region = "us-east-2"
}
resource "aws_key_pair" "deployer" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
tags ={
    Name = "kaizen-key"
    Team = "Devops"
}
}



