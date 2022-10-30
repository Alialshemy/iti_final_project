variable "manage_subnet" {
  type= string
  
}
variable "vpc_id" {
  type = string
}
variable "zone" {
    type = string
    default = "us-central1-a"
    description = "the  default regoin is us-central1"
  
}