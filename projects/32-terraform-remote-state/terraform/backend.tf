terraform {
  backend "s3" {
    bucket       = "replace-with-your-unique-state-bucket"
    key          = "project-32/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true

    # Legacy demonstration only:
    # DynamoDB-based locking is deprecated.
    # dynamodb_table = "terraform-state-lock"
  }
}
