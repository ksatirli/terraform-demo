resource "aws_key_pair" "keypair-terraform-demo-eu-central-1" {
  provider = "aws.eu-central-1"
  key_name = "terraform-demo"
  public_key = "${file("./certificates/ssh/terraform-demo.pub")}"
}
