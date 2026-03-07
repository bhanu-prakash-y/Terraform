/* variable "instances" {
  type = map
  default = {
    mongodb="t3.small"
    mysql="t3.micro"
    user="t3.micro"
    shipping="t3.micro"
  }
} */

# this should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}


variable "zone_id" {
    default = "Z0726019YOHU453AVJ5U"
}

variable "domain_name" {
    default = "bhanudevops.online"
}