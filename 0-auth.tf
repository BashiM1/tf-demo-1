terraform {
  required_version = "${var.required_version}"
  
  required_providers {
    aws = {
      source = "${var.source_variable}"
      version = "${var.required_version}"
      
    }
  }
}

provider "aws" {

      # default region
    region = var.aws_region
    # auth profile
    profile = var.profile

 
}