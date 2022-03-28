Terraform Module to provision an EC2 instance that is running Apache

Not intended for production use. Just showcasing how to create a costume module on Terraform Registry.

```hcl
terraform {

}

provider "aws" {
  region = "eu-west-1"
}

module "apache" {
    source = ".//terraform-aws-module-apache"
    instance_type = "t2.micro"
    ip_address = "MY_OWN_IP_ADDRESS/32"
    vpc_id = "vpc-00000000000000000"
    public_key = "ssh-rsa MY_OWN_PUBLIC_KEY"
    server_name = "Apache Server"
}

output "public_ip" {
  value = module.apache.public_ip
}
```