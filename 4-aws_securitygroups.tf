resource "aws_security_group" "allow-tcp-for-egress-from-ec2" {
  provider = "aws.us-west-2"
  name = "allow all egress from EC2 instances"

  egress {
    protocol = "tcp"
    from_port = 0
    to_port = 65535

    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}
