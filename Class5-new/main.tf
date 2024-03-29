provider aws{
    region = "us-east-2"
}

resource "aws_instance" "web1" {
 
  ami           = "ami-0cd3c7f72edd5b06d"
  instance_type = "t2.micro"
}
resource "aws_instance" "web2" {
  depends_on = [aws_instance.web1]  
  ami           = "ami-0cd3c7f72edd5b06d"
  instance_type = "t2.micro"
}
resource "time_sleep" "wait30" {
    depends_on = [ aws_instance.web2 ]
    create_duration = "30s"
  
}
resource "aws_instance" "web3" {
   depends_on = [ time_sleep.wait30 ]
   ami           = "ami-0cd3c7f72edd5b06d"
   instance_type = "t2.micro"
} 
