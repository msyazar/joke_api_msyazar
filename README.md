# joke_api_msyazar

### Terraform
Create infrastructure
* VPC
* Security Groups
* key pair
* ec2 instance
* ebs volume

### Ansible
Provisioning the EC2 instance and install necessary tools
* Docker
* Jenkins

### Jenkins
Create a jenkins job for deploy nodejs joke_api

### Usage
```
git clone https://github.com/msyazar/joke_api_msyazar.git
terraform apply
curl http://18.216.103.120:8081/api/jokes
```
