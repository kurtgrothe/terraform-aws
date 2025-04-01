# Terraform AWS EC2 Infrastructure Setup

This repository contains Terraform configuration files for provisioning basic AWS infrastructure, as part of a training exercise.

## Files

- `.gitignore` — Git configuration to ignore unnecessary files.
- `app1-install.sh` — Shell script for configuring ec2 load Apache and basic web page.
- `ami-datasource.tf` — Defines the AWS AMI data source used for launching EC2 instances.
- `ec2-instance.tf` — Contains resource definitions for launching an EC2 instance.
- `security-groups.tf` — Security group configuration to control instance access.
- `outputs.tf` — Defines outputs to display after Terraform apply.
- `variables.tf` — Declares input variables for Terraform configuration.
- `version.tf` — Specifies the required provider and Terraform versions.
- `notes.txt` — Notes from the training or manual instructions.
- `terraform.tfstate` (not shown, auto-generated) — Stores the state of managed infrastructure (usually in `.terraform` dir, ignored by Git).

## How to Use

1. **Initialize the project**

   ```bash
   terraform init
