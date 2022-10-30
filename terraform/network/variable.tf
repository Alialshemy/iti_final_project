variable "projectName" {
   type = string
}
variable "vpcName" {
   type = string
   default = "custom-vpc"
}
variable "subnetCidr" {
  type = list
  default = ["192.168.1.0/24","10.0.0.0/18"]
  description = "cidr subnet of management and restricted [management,restricted]"

}
variable "two_secondary_ip_range" {
      type = list
      default = ["10.48.0.0/14","10.52.0.0/20"]
}
variable "subnetName" {
  type = list
  default = ["manage","restricted"]
  description = "the subnet [manage_subnet,restricted_subnet] "

}
variable "region" {   
    type = string
    default = "us-central1"
    description = "the  default regoin is us-central1"
  
}