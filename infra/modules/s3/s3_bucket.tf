resource "aws_s3_bucket" "Custom-S3Backup" {
  bucket        = "mongodbbucket${var.random_id}"
  force_destroy = true

  tags = {
    yor_trace = "70240ef3-7de6-4517-afc2-9afad47cfa3a"
  }
}

