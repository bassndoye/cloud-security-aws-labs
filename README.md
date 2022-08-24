# Cloud Security AWS environement
This terraform project deploy EKS,EC2,S3,IAM and VPC without security best practices. This environement can be used to show the importance of cloud security posture management and cloud worload protection solutions

# Topology
![Alt text](../topology.png?raw=true "Title")

# Requirement
- AWS CLI access to the cloud account
- Kubectl installed
- Terraform installed

# Enviroenment
The terraform project deploy the following resource on EC2
- The network infrastructure. VPC, subnets, IGW, route tables, security groups
- IAM roles and Policies
- S3 bucket publicaly accessible
- MongoDB installed on an EC2 instance. During the boot, we enable mongodb authentication, take a backup snapshot and store it on the S3 bucket
- EKS cluster with Node Group
- Wordrpress and Myql Pods. Wordress is exposed to internet via Kubernetes services with type loadbalancer
- Open source vulnerability scanners. Kube-bench and kube-hunter

# Installation

