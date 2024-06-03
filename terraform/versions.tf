terraform {
  required_version = ">= 1.3.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.7.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.9"
    }
  }
}