resource "aws_instance" "ec2-terraform-demo" {
  provider = "aws.eu-central-1"
  count = 1
  ami = "${lookup(var.aws_ec2_amis, concat(var.aws_region.default,"_", var.aws_ec2_settings.default_os))}"

  instance_type = "t2.micro"
  disable_api_termination = "${var.aws_ec2_settings.disable_api_termination}"

  key_name = "${aws_key_pair.keypair-terraform-demo-eu-central-1.key_name}"

  vpc_security_group_ids = [
    "${aws_security_group.allow-tcp-for-egress-from-ec2.id}"
  ]

  tags = {
    Name = "terraform-demo"
    Services = "Vault"
  }

  root_block_device = {
    volume_type = "${var.aws_ec2_settings.storage_type}"
    volume_size = "10"
    delete_on_termination = "${var.aws_ec2_settings.delete_on_termination}"
  }
}
