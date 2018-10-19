provider "aws" {
  region     = "{$var_aws_region}"
}
 
 resource "aws_instance" "Terraform" {
   ami            = "ami-0d1000aff9a9bad89"
   instance_type  = "${EC2_instance_type}" 
   tags { 
     Name = "Terraform" 
   } 
  } 
