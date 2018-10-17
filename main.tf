provider "aws" {
  region     = "us-west-2"
}
 
 resource "aws_instance" "example" {
   ami            = "ami-0d1000aff9a9bad89"
   instance_type  = "t2.micro" 
   tags { 
     Name = "example" 
   } 
  } 
