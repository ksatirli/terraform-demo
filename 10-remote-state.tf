resource "terraform_remote_state" "remote" {
    backend = "s3"
    config {
        bucket = "${var.terraform_state_s3_bucket}"
        key = "${var.terraform_state_s3_key}/terraform.tfstate"
        region = "${var.terraform_state_s3_region}"
    }
}
