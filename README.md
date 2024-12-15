## AWS-Terraform basic infrastructure
## David Eliason 12/14/2024

### Here lie the config files needed to authenticate VSC local dev env to utlize AWS services using VSC.

Creates VPC, Subnet, IG, Security Group (instace firewall), Route Table, and spins up debian spot instance

Useful video building out AWS services and infrastructure using Terraform: https://www.youtube.com/watch?v=rsct-JvJmKs

First pointed the AMI Data Source to obtain the latest Debian image, but updated that to obtain the latest Amazon Linux 2 AMI image.
