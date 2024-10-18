terraform {
  # Configuring Terraform backend to store state file in an S3 bucket
  backend "s3" {
    # Specify the name of the S3 bucket to store the state file
    bucket = "supermario2030"
    # Specify the AWS region where the bucket is located
    region = "ap-south-1"
    # Specify the path within the bucket to store the state file
    key = "terraform.tfstate"
  }
}
