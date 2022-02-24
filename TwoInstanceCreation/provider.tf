provider "aws" {
    #tenant/marco
    max_retries = 1
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    endpoints {
        ec2 = "${var.cluster_ip}"
        }
    insecure = "true"
    skip_metadata_api_check = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    region = "us-east-1"
  }
