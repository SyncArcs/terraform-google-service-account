terraform {
  required_version = ">= 1.1.0, < 2.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.50.0, < 5.0.0"
    }
  }
}