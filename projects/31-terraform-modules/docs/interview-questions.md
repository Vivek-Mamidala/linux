# Interview Questions

## 1. What is a Terraform Module?

A Terraform Module is a reusable collection of Terraform configuration files that encapsulates infrastructure resources into logical units.

---

## 2. What is the difference between a Root Module and a Child Module?

### Root Module

- Entry point of the Terraform project
- Calls child modules
- Passes input variables
- Connects module outputs


### Root Module

- Entry point of the Terraform project
- Calls child modules
- Passes input variables
- Connects module outputs

### Child Module

- Performs one specific responsibility
- Can be reused multiple times
- Exposes outputs for other modules

---


## 3. Why should we use Terraform Modules?

- Reusability 
- Scalability
- Maintainability
- Reduced code duplication
- Easier collaboration

---


## 4. What are Terraform Outputs?

Outputs expose values from one module so they can be consumed by another module or displayed after deployment.


---


## 5. What is Terraform's Dependency Graph?

Terraform automatically determines the correct order of resource creation based on references between resources and modules.


---


## 6. Can the same Terraform Module be used multiple times?

Yes.

A single module can be instantiated mutltiple times with different variable values to create multiple infrastructure components.

---


## 7. Why is a modular design preferred over a single main.tf?

A modular design improves readability, maintainability, scalability, testing, and collaboration while reducing code application.

