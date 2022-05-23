provider "aws" {
  region = "us-east-1"
}

# To create a s3 bucket-testing11
resource "aws_s3_bucket" "CREATE_S3_BUCKET" {
  bucket = "my-bignet-jenkins3-bucket"
}

