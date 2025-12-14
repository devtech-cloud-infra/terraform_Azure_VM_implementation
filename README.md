# terraform_Azure_vm_implementation
Azure vm  infra creation using terraform.

# Overview

This project automates the creation of a basic Azure infrastructure that includes:

VM (Azure virutal machine)
Azure Subnet
Azure Virtual network

It is designed for startups, learning, and small production-ready environments.

# Technologies Used

Terraform
Azure Virtual Machine (VM)
Azure subnet
Azure Network inferace
Azure Virtual Network
Azure Resource Group

# Prerequisites

Before you begin, ensure you have:

Azure account
Azure subscription
Terraform installed (v1.5+)
Azure CLI configured


# Deployment Steps

# 1. Clone the Repository
git clone https://github.com/devtech-cloud-infra/terraform_Azure_VM_implementation.git

cd terraform_Azure_VM_implementation

# 2. Initialize terraform and azure configure
az login
az account show
az account set --subscription <Subscription ID/Name>
terraform init

# 3. Review the plan:
terraform plan 

# 4. Apply the configuration:
terraform apply 

# 5. Outputs
Terraform will display:
vm machine id 

# 6. Destroy Infra
Terraform destroy

# Security Best Practices

No Azure credentials stored in code.
Terraform state files are excluded from Git.
Infrastructure is parameterized using variables.



