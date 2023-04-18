
### Different Version Parameters:
```sh
version    = "2.7"
version    = ">= 2.8"
version    = "<= 2.8"
version    = ">=2.10,<=2.30"
```

### Base Configuration - provider.versioning.tf

```sh
provider "aws" {
  region     = "us-east-4"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
  version    = ">=2.10,<=2.30"
}

resource "aws_instance" "my_first_ec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```


terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.62.0"
    }
  }
}

provider "google" {
  # Configuration options
}