variable "instances" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}


variable "zone_id" {
    default = "Z0726019YOHU453AVJ5U"
}

variable "domain_name" {
    default = "bhanudevops.online"
}
