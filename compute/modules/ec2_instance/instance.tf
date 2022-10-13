resource "aws_instance" "mongoDbServer" {
   ami                  =  var.amiid[var.region]
  associate_public_ip_address = "true"

  iam_instance_profile                 = var.instance_profile
  instance_type                        = "t2.micro"
  key_name                             = var.ssh_key_name
  private_ip = "172.31.13.230"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "8"
    volume_type           = "gp2"
  }

  source_dest_check = "true"
  subnet_id         = var.subnet1_id

  tags = {
    Name = "Custom-mongoDbServer-${var.random_id}"
  }

  tags_all = {
    Name = "Custom-mongoDbServer-${var.random_id}"
  }

  tenancy                = "default"
  user_data              =  "${data.template_file.user-data-file.rendered}"
  vpc_security_group_ids = [var.sg_id]
}

data "template_file" "user-data-file" {
  template = "${file("${path.module}/user-data")}"

  vars = {
    s3Backet = var.s3_bucket
  }
}
