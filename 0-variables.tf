variable "terraform_state_s3_bucket" {
  description = "Terraform: S3 bucket to store state in"
  default = ""
}

variable "terraform_state_s3_key" {
  description = "Terraform: key (path) to store state at"
  default = ""
}

variable "terraform_state_s3_region" {
  description = "Terraform: AWS region to load S3 bucket from"
  default = ""
}

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
    default = "us-west-2"
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
    # all images below are of type HVM
    eu-west-1_amazon = "ami-69b9941e" # Amazon Linux 2015.09
    eu-central-1_amazon = "ami-daaeaec7" # Amazon Linux 2015.09
    us-west-1_amazon = "ami-cd3aff89" # Amazon Linux 2015.09
    us-west-2_amazon = "ami-9ff7e8af" # Amazon Linux 2015.09
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
    disable_api_termination = true
    default_os = "amazon" # The default OS AMI to use; this is dependant on the list in `aws_ec2_amis`
    storage_type = "gp2" # general purpose SSDs, see http://dcmnt.me/1NXSAo0
    delete_on_termination = false
  }
}
