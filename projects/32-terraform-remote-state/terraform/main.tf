resource "aws_s3_bucket" "terraform_state" {

  bucket        = "araheman-terraform-state-bucket"
  force_destroy = true

  tags = {
    Name        = "Terraform Remote State"
    Environment = var.environment
  }
}


resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {

    status = "Enabled"

  }

}


resource "aws_dynamodb_table" "terraform_lock" {

  name = "terraform-state-lock"

  billing_mode = "PAY_PER_REQUEST"

  hash_key = "LockID"

  attribute {

    name = "LockID"

    type = "S"

  }

  tags = {

    Environment = var.environment

  }

}

