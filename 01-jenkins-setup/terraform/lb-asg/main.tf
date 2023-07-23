provider "aws" {
  region = "us-west-2"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-067661688cbd2e1fc", "subnet-07f1bda7b63ed1d42", "subnet-0ccc60c388b82a357"]
  ami_id        = "ami-0787f8964a2a8fe32"
  instance_type = "t2.small"
  key_name      = "devops-us-west-2"
  environment   = "dev"
  vpc_id        = "vpc-0f05b5ea15a913d11"
}
