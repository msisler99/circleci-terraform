provider "aws" {
  region     = "{$var_aws_region}"
}
 
 resource "aws_instance" "Terraform" {
   ami            = "${var.AMI_Id}"
   instance_type  = "${EC2_instance_type}" 
   tags { 
     Name = "Terraform" 
   } 
  } 
