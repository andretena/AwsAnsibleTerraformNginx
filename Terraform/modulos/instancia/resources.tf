provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "instance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${var.subnet_public_id}"
  vpc_security_group_ids = ["${var.security_group_ids}"]
  key_name = "${var.key_pair_name}"

  tags {
		Desenvolvimento = "${var.devtag}"
	}
}

resource "aws_eip" "testInstanciaEip" {
  vpc       = true
  instance  = "${aws_instance.instance.id}"

  tags {
    Desenvolvimento = "${var.devtag}"
  }
}