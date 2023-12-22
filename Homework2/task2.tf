resource "aws_security_group" "my-sg" {
    id = "sg-084465f9cd9d0a09b"
}
# terraform import aws_security_group.my-sg sg-084465f9cd9d0a09b

resource "aws_instance" "musa" {
    ami = "ami-0ee4f2271a4df2d7d" # id= i-01f4005c2c8174edc
    instance_type = "t2.micro"
    availability_zone = "us-east-2a"
}
# terraform import aws_instance.musa i-01f4005c2c8174edc