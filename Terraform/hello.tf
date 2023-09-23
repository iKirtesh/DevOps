provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    subnet_id = "" # specify the subnet_id of choosen vpc
    key_name = "" # name of key: SSH key pair file name
  
}
