provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-0b02aea8d1df723f0"
  instance_type      = "t2.small"
  key_name           = "devops-us-west-2"
  subnet_ids         = ["subnet-067661688cbd2e1fc", "subnet-07f1bda7b63ed1d42", "subnet-0ccc60c388b82a357"]
  instance_count     = 1
}
