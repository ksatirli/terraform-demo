resource "aws_route53_zone" "r53-terraform-demo" {
  name = "terraform.demo"
}

resource "aws_route53_record" "r53-terraform-demo-apex-txt" {
  zone_id = "${aws_route53_zone.r53-terraform-demo.zone_id}"
  name = "terraform.demo"
  type = "TXT"
  ttl = "300"

  records = [
    "some-site-verification=aBcDe"
  ]
}

resource "aws_route53_record" "r53-terraform-demo-apex-a" {
  zone_id = "${aws_route53_zone.r53-terraform-demo.zone_id}"
  name = "terraform.demo"
  type = "A"
  ttl = "300"

  records = [
    "${aws_instance.ec2-terraform-demo.private_ip}"
  ]
}
