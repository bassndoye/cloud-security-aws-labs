terraform {
	required_providers {
		aws = {
	    version = "~> 4.26.0"
		}
  }
}

provider "aws" {
  region = data.terraform_remote_state.infra.outputs.infra_region
}

resource "random_integer" "unique_id" {
  min = 1000
  max = 9999
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  region = data.terraform_remote_state.infra.outputs.infra_region
  random_id =  random_integer.unique_id.id
  vpc_id = data.terraform_remote_state.infra.outputs.infra_vpc_id
  subnet1_id = data.terraform_remote_state.infra.outputs.infra_subnet1_id
  sg_id = data.terraform_remote_state.infra.outputs.infra_sg_id
  s3_bucket = data.terraform_remote_state.infra.outputs.infra_s3_bucket
  instance_profile = data.terraform_remote_state.infra.outputs.infra_mongodb_instance_profile_id
  ssh_key_name =  var.ssh_key_name
}
 
