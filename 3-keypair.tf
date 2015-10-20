resource "aws_key_pair" "keypair-terraform-demo-us-west-2" {
  provider = "aws.us-west-2"
  key_name = "terraform-demo"
  public_key = "${file("./certificates/ssh/terraform-demo.pub")}"
}
