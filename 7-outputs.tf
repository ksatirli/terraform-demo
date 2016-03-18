output "ec2-terraform-demo.connection-string" {
  value = "ssh -i ${aws_key_pair.keypair-terraform-demo-eu-central-1.key_name} ${lookup(var.aws_ec2_ssh_users, var.aws_ec2_settings.default_os)}@${aws_instance.ec2-terraform-demo.private_ip}"
}
