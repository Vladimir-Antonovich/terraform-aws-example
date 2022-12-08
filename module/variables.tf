variable "access_key" {
  type = string
  description = "Access key for AWS"
}

variable "secret_key" {
  type = string
  description = "Secret key for AWS"
}

variable "aws_region" {
  type = string
  description = "AWS region to launch servers."
}

variable "instance_name" {
  type = string
  description = "Instance name"
}

variable "ami" {
  type = string
  description = "Ami id"
}

variable "vpc_id" {
  type = string
  description = "VPC id"
}

variable "instance_type" {
  type = string
  description = "Instance type"
}

variable "key_name" {
  type = string
  descripdescription = "SSH key name"
}

variable "vpc_security_group_ids" {
  type = list
  descripdescription = "security_group_ids"
}

variable "subnet_id" {
  type = string
  descripdescription = "subnet_id"
}
