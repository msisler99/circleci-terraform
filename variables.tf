variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

# Set this in $TF_VAR_state_path
variable "state_path" {
  description = "Path to the TF state file"
  default     = ""  # Will fail if value is not supplied
}

variable "AMI_Id" {
  description = "AMI Id to use when creating an EC2 instance"
  default     = "ami-0d1000aff9a9bad89"
}

variable "EC2_instance_type" {
  description = "Instance type to use when creating the EC2 instance"
  default     = "t2.micro"
}
