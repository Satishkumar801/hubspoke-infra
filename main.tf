module "rg" {
  source  = "../../modules/resourcegroup"
  rg_name = var.rgname
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/vnets"
  vnet_name  = var.vnetname
}

module "snet" {
  depends_on  = [module.vnet]
  source      = "../../modules/subnets"
  subnet_name = var.subnetname
}

module "nic" {
  depends_on = [module.snet]
  source     = "../../modules/nic"
  nic        = var.nicname

}
module "vmmodule" {
  depends_on     = [module.nic]
  source         = "../../modules/vms"
  virtualmachine = var.vmname
}

module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/public-ip"
  pip        = var.pipname

}



