resource "aws_s3_bucket" "my-s3-tfs-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
  tags = var.tags
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.my-s3-tfs-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
