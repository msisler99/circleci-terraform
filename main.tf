provider "aws" {
  region     = "{$var.aws_region}"
}
 
 resource "aws_instance" "Terraform" {
   ami            = "${var.AMI_Id}"
   instance_type  = "${var.EC2_instance_type}" 
   tags { 
     Name = "Terraform" 
   } 
  } 
