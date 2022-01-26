terraform {
  backend "s3" {}
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}
