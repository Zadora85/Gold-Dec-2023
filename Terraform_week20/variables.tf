variable "EC2_instance_name" {
  type    = string
  default = "Terraform-project-Jenkins"
}

variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}

variable "vpc" {
  type    = string
  default = "vpc-0760c055dfc13919e"
}

variable "type" {
  type    = string
  default = "t2.micro"
}

variable "S3_bucket" {
  type    = string
  default = "terraform-project-bucket"
}
