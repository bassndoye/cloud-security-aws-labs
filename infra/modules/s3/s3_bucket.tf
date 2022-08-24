resource "aws_s3_bucket" "Custom-S3Backup" {
  bucket        = "mongodbbucket${var.random_id}"
  force_destroy = true

}

