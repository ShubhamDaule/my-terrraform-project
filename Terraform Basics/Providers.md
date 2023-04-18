
### Different Version Parameters:
```sh
version    = "2.7"
version    = ">= 2.8"
version    = "<= 2.8"
version    = ">=2.10,<=2.30"
version    = "~> 2.8"
```

### AWS Provider
```sh
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}
```


### Github Provider
```sh
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}
```

### Digital Ocean Provider
```sh
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.5.0"
    }
  }
}

provider "digitalocean" {}
```


### example
```sh
terraform {
    required_version = "~> 1.1.7" 
    required_providers {
     google = "~> 4.8.0"
  }
}
provider "google" {
}
```