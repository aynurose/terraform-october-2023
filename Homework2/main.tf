# data "aws_ami" "amazon" {
#   most_recent = true


#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
#   filter {
#     name = "root-device-type"
#     values = ["ebs"]
#   }
#  filter {
#     name = "architecture"
#     values = ["x86_64"]
#   }
#     owners =["137112412989"]
# }


# resource "aws_instance" "web" {
#   ami           = data.aws_ami.amazon.id
#   instance_type = "t2.micro"
#   availability_zone = "us-east-2a"
#   vpc_security_group_ids = [aws_security_group.allow_tls.id]
#   key_name = aws_key_pair.deployer.key_name
#   user_data = file("httpd.sh")
 

#   tags = local.common_tags
# }

