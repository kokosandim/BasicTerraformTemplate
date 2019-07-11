provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}

variable "instance_type" {
 default = "t2.micro"
}

resource "aws_instance" "ec2_instance" {
 ami = "ami-0d8f6eb4f641ef691"
 instance_type = "${var.instance_type}"
}

output "ip" {
 value = "${aws_instance.ec2_instance.public_ip}"
}
