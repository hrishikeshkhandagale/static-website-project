variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default     = "ovi"     # KEYPAIR NAME on AWS — not .pem file
}

variable "security_group_name" {
  description = "Name for the security group"
  type        = string
  default     = "web-sg"
}

variable "ami_id" {
  description = "AMI ID for EC2 (ubuntu)"
  type        = string
  default     = "ami-02b8269d5e85954ef" # Mumbai region Amazon Linux 2 AMI
}
