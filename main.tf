provider "aws" {
  region     = "${var.aws_region}"
}

Some invalid stuff
 
 resource "aws_instance" "Terraform" {
   ami            = "${var.AMI_Id}"
   instance_type  = "${var.EC2_instance_type}" 
   tags { 
     Name = "Terraform" 
   } 
  } 
