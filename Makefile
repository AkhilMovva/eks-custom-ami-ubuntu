PACKER_VARIABLES := binary_bucket_name binary_bucket_region eks_version eks_build_date cni_plugin_version root_volume_size data_volume_size hardening_flag http_proxy https_proxy no_proxy
VPC_ID := vpc-0b6deb0b3f68604a2
SUBNET_ID := subnet-07dc9ba29299e98c3
AWS_REGION := us-east-1
PACKER_FILE := 

EKS_BUILD_DATE := 2020-11-02
EKS_119_VERSION := 1.19.6

build:
	packer build \
		--var 'aws_region=$(AWS_REGION)' \
		--var 'vpc_id=$(VPC_ID)' \
		--var 'subnet_id=$(SUBNET_ID)' \
		$(foreach packerVar,$(PACKER_VARIABLES), $(if $($(packerVar)),--var $(packerVar)='$($(packerVar))',)) \
		$(PACKER_FILE)

# Ubuntu 20.04
#-----------------------------------------------------
build-ubuntu2004-1.19:
	$(MAKE) build PACKER_FILE=amazon-eks-node-ubuntu2004.json eks_version=$(EKS_119_VERSION) eks_build_date=2021-01-05