
provider "aws" {
   region = "eu-west-3"
 }

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-test-86"

  versioning {
     enabled = true
  }

  lifecycle {
     prevent_destroy = true
  }
  
} 


terraform {
  backend "s3" {
    bucket  = "terraform-test-86"
    region  = "eu-west-3"
    key     = "terraform.tfstate"
    encrypt = true    
  }
} 

#output = "s3_bucket_arn" {
#   value = "${aws_s3_bucket.terraform_state.arn}"
#}   
