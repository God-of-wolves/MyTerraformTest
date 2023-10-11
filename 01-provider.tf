terraform {
  required_providers {
    vsphere = {
      version = "2.4.3"
    }
  }
}

provider "vsphere" {
  user = var.access.user
  password = var.access.password
  allow_unverified_ssl = var.access.allow_unverified_ssl
  vsphere_server = var.access.vsphere_server
  
}
