resource "aws_s3_bucket_policy" "Custom-S3Bucket-Policy" {
  bucket = "${aws_s3_bucket.Custom-S3Backup.id}"
    policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "${aws_s3_bucket.Custom-S3Backup.arn}/*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}
