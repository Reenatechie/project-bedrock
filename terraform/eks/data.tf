data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "project-bedrock-tfstate-altsoe0254232"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
