resource "aws_security_group" "allow-tcp-for-ssh-from-knowns" {
  provider = "aws.us-west-2"
  name = "allow all ingress traffic for SSH from known IPs"
  description = "some random description"

  # SSH
  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22

    cidr_blocks = [
      "${split(",", var.meta_known_ipranges.office)}",
    ]
  }
}
