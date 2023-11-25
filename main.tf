# #S3 Bucket

# module "s3_bucket" {
#   source = "./modules/s3"
# }

# #EC2
# module "ec2_instance" {
#   source = "./modules/ec2"
#   create_ec2 = var.create_ec2
#   counter = var.counter
# }

# ##IAM
# module "iam" {
#   source = "./modules/iam"
#   resource = module.s3_bucket.s3_arn
# }

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""

}

module "aws_instance" {
  depends_on      = [module.aws_security_group]
  source          = "./modules/ec2"
  var_counter     = var.counter
  create_inst_ec2 = var.create_ec2
  sg              = module.aws_security_group.security_group_id
}

module "aws_s3_bucket" {
  source = "./modules/s3"
}


module "iam" {
  source   = "./modules/iam"
  resource = module.aws_s3_bucket.s3_arn
}

module "aws_security_group" {
  source = "./modules/sg"
}


