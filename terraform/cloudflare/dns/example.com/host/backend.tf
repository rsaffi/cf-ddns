terraform {
  required_version = ">= 1.1.0"
  backend "local" {
    path = "./terraform.tfstate"
  }
}
