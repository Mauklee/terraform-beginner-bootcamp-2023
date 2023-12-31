terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}


resource "random_string" "bucket" {
    length = 16
    special = true
    override_special = ""  
}

output "random_bucket_name_id" {
    value = random_string.bucket.id

}