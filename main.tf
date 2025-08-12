terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
  }
  required_version = ">= 1.0"
}

provider "local" {}

resource "local_file" "test_file" {
  content  = "Terraform test file from workflow-terraform-docker repo"
  filename = "${path.module}/tf_output/test_file.txt"
}

output "file_path" {
  value = local_file.test_file.filename
}
