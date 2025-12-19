variable vpc_cidr_block {}
variable env_prefix {} 
variable aws_region {}
variable required_version {}
variable source_variable {}
variable profile {}



variable "web_server_instance_type" {
  description = "Instance type for the web servers managed by the ASG."
  type        = string
  default     = "t3.micro"
}


variable "web_server_ami_id" {
  description = "AMI ID for the web server instances (Amazon Linux 2)."
  type        = string
  default     = "ami-09968b16214ef62ce" 
}