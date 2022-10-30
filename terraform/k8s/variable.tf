variable "network" {
   type = string
}
variable "subnetwork" {
    type = string
  
}
variable "authirize_ip" {
   type=string
   default="0.0.0.0/0"
}