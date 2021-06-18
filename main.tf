provider "aws" {
  region     = "us-east-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

}

module "firstvpc" {
  source   = "./vpc"
  vpc_cidr = "20.0.0.0/24"
  name     = "HelloVPC2"
}

module "firstEC2" {
  source = "./ec2"
  name   = "ec2first"

}
