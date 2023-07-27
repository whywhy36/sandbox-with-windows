terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4"
    }
  }
}

data "external" "env" {
  program = ["${path.module}/env.sh"]
}

provider "aws" {
  default_tags {
    tags = {
      Sandbox = data.external.env.result.sandbox_name
    }
  }
}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "template_file" "init" {
    template = "${file("${path.module}/init.tpl")}"

    vars = {
        ssh_pub = data.external.env.result.ssh_pub
    }
}

resource "aws_instance" "vm" {
  launch_template {
    name = var.launch_template_name
  }
  get_password_data      = true
  user_data = "${data.template_file.init.rendered}"
}
