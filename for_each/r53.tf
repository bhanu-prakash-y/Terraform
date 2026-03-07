resource "aws_route53_record" "testing" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  # interpolation
  name    = "${each.key}.${var.domain_name}" # mongodb.bhanudevops.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

/* resource "aws_route53_record" "test" {
  zone_id = var.zone_id
  # interpolation
  name    = "roboshop.${var.domain_name}" # mongodb.bhanudevops.online
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.example, "frontend").public_ip]
  allow_overwrite = true
} */