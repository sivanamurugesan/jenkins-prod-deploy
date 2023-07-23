provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-0f05b5ea15a913d11"
  subnet_ids = ["subnet-067661688cbd2e1fc", "subnet-07f1bda7b63ed1d42", "subnet-0ccc60c388b82a357"]
}
