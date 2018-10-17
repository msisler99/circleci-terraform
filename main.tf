provider "aws" {
  region     = "us-west-2"
}
 
 resource "aws_vpc" "minimal" { 
   cidr_block = "10.0.0.0/26" 
   tags { 
     Name = "minimal" 
   } 
  } 
