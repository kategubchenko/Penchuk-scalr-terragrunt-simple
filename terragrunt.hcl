terraform {
  # Use relative path to refer to the module
  source = "./module"
}

remote_state {
  backend = "s3"

  config = {
    bucket         = "alfiia-terraform-state-bucket"
    key            = "global/s3/terraform.tfstate"  
    region         = "us-west-2"
    encrypt        = true                          
    dynamodb_table = "terraform-locks"     
  }
  skip_bucket_update = true
}
