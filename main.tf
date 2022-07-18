terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.29"
      region  = "us-central1"
    }
    
  cloud {
    organization = "iavirvarei"

    workspaces {
      name = "Google_credentials"
    }
  }
}
