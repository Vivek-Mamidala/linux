# Project 31 - Terraform Modules & Reusable Infrastructure

## Project Overview

This project demonstrates how to design reusable Infrastructure as Code using Terraform Modules.

Instead of placing all infrastructure inside a single 'main.tf' file, the infrastructure is divided into independent reusable modules that follow the Single Responsibility Principle.

The Root Module orchestrates all child modules by passing variables and consuming outputs, allowing the infrastructure to remain modular, maintainable, and scalable. 


---


## Project Objectives 

- Understand Terraform Module Architecture
- Build reusable infrastructure components
- Separate networking, security, and compute
- Learn module inputs and outputs
- Understand dependency management
- Deploy infrastructure using reusable modules


---


## Technologies Used

- Terraform 
- AWS EC2
- AWS VPC
- AWS Subnet
- AWS Internet Gateway
- AWS Route Tables
- AWS Security Groups

---


## Project Structure

```text
terraform/
│
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── main.tf
├── outputs.tf
│
└── modules/
    ├── vpc/
    ├── security-group/
    └── ec2/
```

---

## Architecture

```
                Root Module
                     │
     ┌───────────────┼───────────────┐
     │               │               │
     ▼               ▼               ▼
 VPC Module    Security Group    EC2 Module
     │               │               │
     └──────────► Outputs ◄──────────┘
```

---

## Modules

### VPC Module 

Responsible for:

- VPC 
- Public Subnet 
- Internet Gateway
- Route Table
- Route Table Association

Outputs

- VPC ID
- Public Subnet ID
- Internet Gateway ID

---

### Security Group Module

Responsible for:

- Security Group
- SSH Rule
- HTTP Rule

Outputs

- Security Group ID

---

### EC2 Module

Responsible for:

- EC2 Instance

Outputs

- Instance ID
- Public IP

---

## Skills Learned 

- Terraform Modules
- Module Reusability
- Root Module
- Child Module
- Variables
- Outputs
- Dependency Graph
- Infrastructure Composition
- Infrastructure Reusability

---

## Usage

Navigate to the Terraform directory:

```bash
cd terraform
```

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Review the execution plan:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure after testing:

```bash
terraform destroy
```

---

## Production Improvements

Future improvements include:

- Remote State Backend
- Dynamic Security Group Rules
- Multiple Subnets
- NAT Gateway
- Private Subnets
- Auto Scaling
- Application Load Balancer

---

## Project Status

Completed
