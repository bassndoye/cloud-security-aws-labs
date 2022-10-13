terraform {
	required_providers {
		aws = {
	    version = "~> 4.26.0"
		}
  }
}

provider "aws" {
  region = var.region
}

resource "random_integer" "unique_id" {
  min = 1000
  max = 9999
}

module "vpc" {
  source = "./modules/vpc"
  random_id = random_integer.unique_id.id
}
 module "subnet" {
  source = "./modules/subnet"
  random_id = random_integer.unique_id.id
  vpc_id = module.vpc.vpc_id
 
}

 module "sg" {
  source = "./modules/sg"
  random_id = random_integer.unique_id.id
  vpc_id = module.vpc.vpc_id
  
}
 module "igw" {
  source = "./modules/igw"
  random_id = random_integer.unique_id.id
  vpc_id = module.vpc.vpc_id
  
}
 module "route_table" {
  source = "./modules/route_table"
  random_id = random_integer.unique_id.id
  vpc_id = module.vpc.vpc_id
  igw_id = module.igw.igw_id
  subnet1_id = module.subnet.subnet1_id
  subnet2_id = module.subnet.subnet2_id
  subnet3_id = module.subnet.subnet3_id
  depends_on = [module.igw, module.subnet]
}
 module "iam" {
  source = "./modules/iam"
  random_id = random_integer.unique_id.id
}
 module "s3" {
  source = "./modules/s3"
  random_id = random_integer.unique_id.id
  depends_on = [module.iam]
}
