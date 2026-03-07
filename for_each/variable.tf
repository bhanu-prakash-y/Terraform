variable "instances" {
  type = map
  default = {
    mongodb="t3.small"
    mysql="t3.micro"
    user="t3.micro"
    shipping="t3.micro"
  }
}