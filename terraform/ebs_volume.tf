resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = aws_instance.ec2_instance.availability_zone
  size              = 1
  tags = {
    Name = "ebsVolume"
  }
}

# attach created volume to ec2 instance 
resource "aws_volume_attachment" "attach_volume" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.ebs_volume.id
  instance_id = aws_instance.ec2_instance.id
  force_detach = true                           
}
