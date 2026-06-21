terraform {
  backend "s3" {
    bucket = "project-bedrock-tfstate-altsoe0254232"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
