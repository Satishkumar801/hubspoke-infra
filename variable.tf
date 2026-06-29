variable "rgname" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}
variable "vnetname" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))
}

variable "subnetname" {
  type = map(object({
    name             = string
    vnet_name        = string
    rg_name          = string
    address_prefixes = list(string)
  }))
}

variable "nicname" {
  type = map(object({
    name       = string
    location   = string
    rg_name    = string
    private_ip = string
    vnet_name  = string
    snet_name  = string
  }))
}

variable "vmname" {
  type = map(object({
    vm_name  = string
    rg_name  = string
    location = string
    nic_name = string
  }))
}

variable "pipname" {
  type = map(object({
    pip_name = string
    rg_name  = string
    location = string

  }))
}
