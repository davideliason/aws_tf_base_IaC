# Request a spot instance at $0.03
data "aws_ami" "debian" {
  most_recent = true
  owners      = ["136693071363"]

  filter {
    name   = "name"
    values = ["debian-11-amd64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_spot_instance_request" "awstf5_ec2" {
  ami           = data.aws_ami.debian.id
  instance_type = "t3.micro"

  associate_public_ip_address = true
  key_name                    = "id_rsa"
  vpc_security_group_ids      = [aws_security_group.awstf5_SG_ssh.id]
  subnet_id                   = aws_subnet.awstf5_sn.id
  wait_for_fulfillment        = true

  tags = {
    Name = "awstf_id_rsa"
  }
}
