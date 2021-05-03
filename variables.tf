/**
 * All values can be provided by terraform.tfvars
 *
 */
variable "region" {
  default = "us-west"
}

variable "ami_id" {
  default = "ami-a0360bc3"
}

variable "availability_zone_names" {
  default = ["us-west-1a","us-west-1c",]
}

variable "key_name" {
  default = "example"
}

variable "instance_class" {
  default = "m3.medium"
}
