###
 # Section: meta settings
 # These variables contain meta settings such as personal IPs
###

variable "meta_known_ipranges" {
  description = "meta: known IPs and IP ranges"
  default = {
    office = "12.34.56.78/32"
  }
}

###
 # Section: Amazon Web Services
 # These variables contain AWS-specific data and settings
 #
 # see https://terraform.io/docs/providers/aws/index.html for more information
###

variable "aws_region" {
  description = "Region to work with"
  default = {
    default = "eu-central-1"
  }
}

variable "aws_access_key" {
  description = "Access Key to launch with"
  default = ""
}

variable "aws_secret_key" {
  description = "Secret Key to launch with"
  default = ""
}

variable "aws_ec2_amis" {
  description = "Region-specific AMIs"
  default = {
    eu-central-1_amazon = "ami-daaeaec7" # Amazon Linux 2015.09
  }
}

variable "aws_ec2_ssh_users" {
  description = "AMI-specific SSH users"
  default = {
    # all images below are of type HVM
    amazon = "ec2-user"
    centos = "centos"
  }
}

variable "aws_ec2_settings" {
  description = "EC2-specific settings"
  default = {
    disable_api_termination = false
    default_os = "amazon" # The default OS AMI to use; this is dependant on the list in `aws_ec2_amis`
    storage_type = "gp2" # general purpose SSDs, see http://dcmnt.me/1NXSAo0
    delete_on_termination = false
  }
}
