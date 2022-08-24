output "s3_bucket_policy_Custom-S3Bucket-Policy_id" {
  value = "${aws_s3_bucket_policy.Custom-S3Bucket-Policy.id}"
}

output "s3_bucket_Custom-S3Backup_id" {
  value = "${aws_s3_bucket.Custom-S3Backup.id}"
}
