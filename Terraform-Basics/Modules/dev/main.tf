module "ec2module" {
  source = "../modules/ec2"
}

module "sgmodule" {
  source = "../modules/sg"
}

resource "aws_instance" "web" {
  ami           = "ami-0ca285d4c2cda3300"
  instance_type = "t3.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}

#referencing output
output "sg_id_output" {
  value = module.sgmodule.sg_id
}

#terraform registry
module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0d6621c01e8c2de2c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-4dbfb206"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

#Generic GIT Repository:
module "demomodule" {
  source = "git::https://github.com/zealvora/tmp-repo.git"
}

#Generic GIT Repository with Specific branch:
module "demomodule" {
  source = "git::https://github.com/zealvora/tmp-repo.git?ref=development"
}

