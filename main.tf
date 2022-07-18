terraform {
  required_providers {
    
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "iavirvarei"

    workspaces {
      name = "Google_credentials"
    }
  }
}
