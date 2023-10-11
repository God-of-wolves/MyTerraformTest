variable "access" {
  type = object({
    user = string
    password = string
    vsphere_server = string
    allow_unverified_ssl = bool
  })
  
  default = {
    user = "root"
    password = "Ipsec@21"
    vsphere_server = "172.20.18.27"
    allow_unverified_ssl = true

  }
  
}
variable "vm_name" {
  type = string
  default = "test-ubuntu"
}


variable "num_cpus" {
  type = number
  default = 1
}

variable "memory" {
  type = number
  default = 1024
}

variable "guest_id" {
  type = string
  default = "ubuntu64Guest"
}

variable "wait_for_guest_net_timeout" {
  type = number
  default = 0
}

variable "wait_for_guest_ip_timeout" {
  type = number
  default = 0
}


variable "disk" {
  type = object({
    label = string
    size = number
  })
  default = {
    label = "disk0"
    size = 1
  }
}