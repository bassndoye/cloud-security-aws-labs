data "terraform_remote_state" "infra" {
  backend = "local"

  config = {
    path = "../infra/terraform.tfstate"
  }
}
variable "ssh_key_name" {
  description = "Specify the ssh key that correspond to the region where you want to deploy the ec2 instance"
}
