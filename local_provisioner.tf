# execute ansible playbook

resource "null_resource" "configure_server"{
depends_on = [aws_instance.ec2_instance,aws_ebs_volume.ebs_volume,aws_volume_attachment.attach_volume]
  
provisioner "local-exec"{
  command = "chmod 400 ${var.base_path}${var.key_name}.pem"
  }
provisioner "local-exec"{
  command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ec2-user --private-key ${var.base_path}${var.key_name}.pem -i '${aws_instance.ec2_instance.public_ip},' playbook.yml"
  }
}
