# Architecture 

## Design Philosophy

Each module has a single responsibility.

| Module | Responsibility |
|---------|----------------|
| VPC | Networking |
| Security Group | Firewall Rules |
| EC2 | Compute |

The Root Module acts as the orchestrator by wiring modules together using outputs and variables.

---

## Why Modules?

Without modules:

- Huge main.tf
- Difficult maintenance
- High code duplication
- Poor scalability

With modules:

- Reusable
- Maintainable
- Easier collaboration
- Better testing
- Cleaner code

---

## Dependency Flow

VPC

↓

Subnet

↓

Security Group

↓

EC2

Terraform automatically determines the correct creation order using module outputs and references.
