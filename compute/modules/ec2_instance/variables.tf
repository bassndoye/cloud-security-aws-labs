variable "random_id" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "subnet1_id" {
  type = string
}
variable "sg_id" {
  type = string
}
variable "instance_profile" {
  type = string
}
variable "ssh_key_name" {
  type = string
}
variable "s3_bucket" {
  type = string
}
variable "region" {
  type = string
}
variable "amiid" {
  default = {
af-south-1  = "ami-0d0784faf9e1c7209"
ap-east-1  = "ami-0c56f62099c0c2973"
ap-northeast-1  = "ami-001b7529fd6862b51"
ap-south-1  = "ami-0f1f760213bfc67c0"
ap-southeast-1  = "ami-080f23c7266c0f7de"
ca-central-1  = "ami-01062b8aaa391e14c"
eu-central-1  = "ami-0f3f0cd0c5fc276ae"
eu-north-1  = "ami-04af79841db331d20"
eu-south-1  = "ami-0c471fae8b8f40566"
eu-west-1  = "ami-034943c569985ba6e"
me-central-1  = "ami-095739c2f193c1938"
me-south-1  = "ami-07571787fa4b977ee"
sa-east-1  = "ami-016aa6c06b8ef1108"
us-east-1  = "ami-04fc00d791d804b24"
us-west-1  = "ami-0d32650d85b475623"
af-south-1  = "ami-0b85ee3e8c106e838"
ap-east-1  = "ami-0632cd3a0ed29c165"
ap-northeast-1  = "ami-0a9e71b04ab264842"
ap-south-1  = "ami-0ae5f56f71bbbd5d8"
ap-southeast-1  = "ami-032b35b41ed1e1791"
ca-central-1  = "ami-02c6924a17046d4fd"
eu-central-1  = "ami-0c8d0fa3dc4a278f1"
eu-north-1  = "ami-0728d649224291457"
eu-south-1  = "ami-083e85202e0e41d66"
eu-west-1  = "ami-026382351bf7a2654"
me-central-1  = "ami-006b1af636885b5f7"
me-south-1  = "ami-01c691945f24635af"
sa-east-1  = "ami-040a4426ea9953ecd"
us-east-1  = "ami-08e8725a42775740f"
us-west-1  = "ami-006ac7606bb06bc8c"
ap-northeast-1  = "ami-06529927ee358ff87"
ap-south-1  = "ami-0c557aecdae2bc8c5"
ap-southeast-1  = "ami-07404c15321250f1b"
ca-central-1  = "ami-062cf7754e141bd63"
eu-central-1  = "ami-08ac8bc6775c6640f"
eu-north-1  = "ami-056216300def9ad17"
eu-west-1  = "ami-0c5cb4a0b9a361325"
sa-east-1  = "ami-0f36ae2ae04d5c37b"
us-east-1  = "ami-09aad5114ce52da3a"
us-west-1  = "ami-0b185bc6c11c11f00"
cn-north-1  = "ami-0764541358866f84e"
cn-northwest-1  = "ami-02441dea73a15a612"
cn-north-1  = "ami-074729b7a36af28b2"
cn-northwest-1  = "ami-09b9204d128fd2da6"
cn-north-1  = "ami-0190dc90f5ec05380"
cn-northwest-1  = "ami-0cd118007b9743aa9"
us-gov-east-1  = "ami-06882b7abb9c4aab7"
us-gov-east-1  = "ami-01c308292da9fe7f5"
us-gov-west-1  = "ami-03d3b4a1f2a77936e"
us-gov-west-1  = "ami-02642d561d662175f"
us-gov-east-1  = "ami-01e1fb91b04c67927"
us-gov-west-1  = "ami-02eac095dd3ab4531"
ap-northeast-2  = "ami-09fa03ef1bc0d6544"
ap-southeast-2  = "ami-0ce7edf3564b54498"
eu-west-2  = "ami-0f51aea7c45757f13"
us-east-2  = "ami-07e3ebaa49bb2df97"
us-west-2  = "ami-0014615d641e8e15e"
ap-northeast-2  = "ami-0a85a3c4a144507ce"
ap-southeast-2  = "ami-0bea876eb62b7f02a"
eu-west-2  = "ami-00562da03617feef1"
us-east-2  = "ami-0c5308b6ffe824128"
us-west-2  = "ami-05d0752eb3cecd0a1"
ap-northeast-2  = "ami-04ff059b10c46c7f3"
ap-southeast-2  = "ami-0db0d9515e0dee226"
eu-west-2  = "ami-0f272f6f0568d7c92"
us-east-2  = "ami-091261c03c52eabeb"
us-west-2  = "ami-08fde29914095de37"
ap-northeast-3  = "ami-0bbedf9f331890624"
ap-southeast-3  = "ami-07e7ff1bab80d74da"
eu-west-3  = "ami-00ad8fb7c7e21c86d"
ap-northeast-3  = "ami-0cc4d4b1dd14a564d"
ap-southeast-3  = "ami-08495e6cea4661cd1"
eu-west-3  = "ami-09757bc03345bd2bc"
ap-northeast-3  = "ami-06de4da7dbfad0706"
eu-west-3  = "ami-0f4b571d333be1359"
  }
}
