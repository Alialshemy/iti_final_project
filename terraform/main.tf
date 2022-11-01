module "network" {
  source      = "./network"
  projectName = var.project

}
module "bastion" {
  source        = "./bastion"
  vpc_id           = module.network.vpc.id
  manage_subnet = module.network.manage_subnet.id

}

module "K8s" {
 
    source = "./k8s"
    network = module.network.vpc.self_link
    subnetwork = module.network.restricted_subnet.self_link
    authirize_ip = module.bastion.machine_ip
  
} 