provider "google" {
  project = "testing-gcp-sync"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#####==============================================================================
##### service-account module call .
#####==============================================================================
module "service-account" {
  source           = "./../"
  name             = "dev"
  environment      = "test"
  key_algorithm    = "KEY_ALG_RSA_2048"
  public_key_type  = "TYPE_X509_PEM_FILE"
  private_key_type = "TYPE_GOOGLE_CREDENTIALS_FILE"
  roles            = ["roles/iam.serviceAccountUser"]
}
