# EKS Custom AMI for Ubuntu 20.04

```bash
git clone https://github.com/AkhilMovva/eks-custom-ami-ubuntu.git

make build-ubuntu2004-1.22

./helpers/eksctl-lt.sh --cluster custom-ami --name ng-1 --ami ami-0ab0c69d45a406232 --instance-type t3.xlarge
```
