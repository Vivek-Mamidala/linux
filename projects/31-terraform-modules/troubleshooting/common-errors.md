# Common Errors

## Error: Terraform not initialized

### Cause

Provider plugins have not been downloaded.


### Solution

```bash
terrform init
```

---


## Error: Missing required variable

### Cause

A required variable is missing from `terraform.tfvars`.

### Solution

Verify all required variables are defined.

---


## Error: Unsupported argument

### Cause

Variable names in the Root Module and Child Module do not match.

### Solution

Verify the variable definition in `variables.tf`.

---


### Error: Output not found

### Cause 

The referenced output does not exist in the child module.

### Solution

Check `outputs.tf` and ensure the output name matches the reference.

---


## Error: AWS authentication failed

### Cause

AWS CLI credentials are missing or invalid.

### Solution

```bash
aws configure
```

Verify credentials with:

```bash
aws sts get-caller-identity
```

---


## Error: Resource dependency issues

### Cause

Modules are using hardcoded values instead of outputs.

### Solution

Pass values using module outputs instead of manaually entering resource IDs.

