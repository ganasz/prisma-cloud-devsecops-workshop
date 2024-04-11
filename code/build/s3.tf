provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "53d80a7dc8269176b551c0450386ecf87ce4c9b6"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-04-11 15:41:20"
    git_last_modified_by = "61078520+ganasz@users.noreply.github.com"
    git_modifiers        = "61078520+ganasz"
    git_org              = "ganasz"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "f3ccbaf6-7f6d-406b-8f10-08ffb1c45fcc"
  }
}


resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

