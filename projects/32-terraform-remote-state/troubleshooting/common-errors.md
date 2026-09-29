# Common Errors 

## Error: Failed to query available provider packages

### Cause

Incorrect provider source (e.g., `hashicorp/aws` instead of `hashicorp/aws`).

### Solution 

Verify the provider source:

```hcl
source = "hashicorp/aws"
```

---

### Error: Backend bucket does not exist

### Cause

Terraform backend configured before creating the S3 bucket.

### Solution

Create the backend infrastructure first, the migrate the state.

---

## Error: BucketNotEmpty 

### Cause

Terraform cannot delete a versioned S3 bucket containing object versions.

### Solution

Enable:

```hcl
force_destroy = true
```

or empty the bucket before deletion.

---

## Error: Error acquiring the state lock

### Cause

Another Terraform operation currently holds the lock.

### Solution

Wait for the active operation to finish.

Avoid using `terraform force-unlock` unless you are certain the lock is stale.

---

## Error: Missing AWS Credentials

### Cause

AWS CLI credentials are not configured.

### Solution

```bash
aws configure
```

Verify: 

```bash
aws sts get-caller-identity
```

---

## Error: Backend configuration changed 

### Cause

Changes were made to `backend.tf`.

### Solution

Run:

```bash
terraform init -reconfigure
```

or 

```bash
terraform init -migrate-state
```

depending on whether state migration is required.

---

## Error: Local State Still Exists

### Cause

Old Terraform State files remain after migration.

### Solution

Delete:

```text
terraform.tfstate
terraform.tfstate.backup
```

Ensure they are ignoring using `.gitignore`.

