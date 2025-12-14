# terraform_AWS_EC2_implementation
AWS ec2 instance infra creation using terraform.

# Overview

This project automates the creation of a basic AWS infrastructure that includes:

EC2 Instance (Amazon Linux)

It is designed for startups, learning, and small production-ready environments.

# Technologies Used

Terraform
AWS EC2
Amazon Linux AMI

# Prerequisites

Before you begin, ensure you have:

AWS account
AWS IAM user with required permissions
Terraform installed (v1.5+)
AWS CLI configured
Existing AWS key pair

# Deployment Steps

# 1. Clone the Repository
git clone https://github.com/devtech-cloud-infra/terraform_AWS_EC2_implementation.git

cd terraform_AWS_EC2_implementation

# 2. Initialize terraform and aws configure
aws configure
terraform init

# 3. Review the plan:
terraform plan -var="key_name=your-key-pair-name"

# 4. Apply the configuration:
terraform apply -var="key_name=your-key-pair-name"

# 5. Outputs
Terraform will display:
EC2 Instance Public IP

# Security Best Practices

No AWS credentials stored in code.
Terraform state files are excluded from Git.
Infrastructure is parameterized using variables.
