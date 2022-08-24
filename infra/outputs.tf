output "infra_vpc_id" {
  value = module.vpc.vpc_id
}
output "infra_igw_id" {
  value = module.igw.igw_id
}
output "infra_subnet1_id" {
  value =  module.subnet.subnet1_id
}
output "infra_subnet2_id" {
  value =  module.subnet.subnet2_id
}
output "infra_subnet3_id" {
  value =  module.subnet.subnet3_id
}
output "infra_sg_id" {
  value =  module.sg.sg_id
}

output "infra_mongodb_instance_profile_id" {
  value =  module.iam.iam_instance_profile_Custom-MongoDBProfile_id
}
output "infra_s3_bucket" {
  value =  module.s3.s3_bucket_Custom-S3Backup_id
}

output "infra_region" {
  value =  var.region
}

output "infra_iam_AmazonEKSNodeRole_arn" {
  value =  module.iam.iam_role_Custom-AmazonEKSNodeRole_arn
}

output "infra_iam_AmazonEKSClusterRole_arn" {
  value =  module.iam.iam_role_Custom-AmazonEKSClusterRole_arn
}




