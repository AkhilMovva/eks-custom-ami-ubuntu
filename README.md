# EKS Custom AMI for Ubuntu 20.04

```bash
# original repo - https://github.com/aws-samples/amazon-eks-custom-amis
git clone https://github.com/AkhilMovva/eks-custom-ami-ubuntu.git

make build-ubuntu2004-1.22

./helpers/eksctl-lt.sh --cluster custom-ami --name ng-1 --ami ami-06424942cc67c36c7 --instance-type t3.xlarge
```
