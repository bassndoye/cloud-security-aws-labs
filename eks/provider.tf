provider "aws" {
  region = data.terraform_remote_state.infra.outputs.infra_region
}

terraform {
	required_providers {
		aws = {
	    version = "~> 4.26.0"
		}
  }
}
