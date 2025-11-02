provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "maheshsaini1997-practice-bucket-1"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
    bucket = aws_s3_bucket.my_bucket.id
    acl    = "private"
}