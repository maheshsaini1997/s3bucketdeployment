provider "aws" {
    region = "eu-north-1"
}

resource "aws_s3_bucket" "my_bucket" {
    bucket = "PracticeBucket1"
    acl    = "private"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}