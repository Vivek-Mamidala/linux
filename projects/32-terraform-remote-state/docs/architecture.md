# Architecture

## High-Level Architecture

This project demonstrates how Terraform uses a remote backend to store infrastructure state and coordinate multiple engineers working on the same infrastructure.

```
                Developers
        ┌─────────┬─────────┬─────────┐
        │         │         │
        ▼         ▼         ▼
   Terraform CLI Terraform CLI Terraform CLI
                │
                ▼
          Amazon S3 Backend
      (terraform.tfstate)
                │
                ▼
        DynamoDB State Lock
                │
                ▼
        AWS Infrastructure
```

---

## Architecture Components

### Terraform CLI

Used by engineers to provision, update, and destroy infrastructure.

---

### Amazon S3

Stores the Terraform State file remotely.

Benefits:

- Single source of truth
- Shared by all engineers
- Versioning support
- Disaster recovery

---

### DynamoDB

Provides state locking.

Benefits:

- Prevents concurrent modifications
- Protects state from corruption
- Enables safe team collaboration

---

## Workflow

1. Create backend infrastructure locally.
2. Configure S3 backend.
3. Migrate local state to S3.
4. Verify remote backend.
5. Demonstrate state locking.
6. Destroy infrastructure safely.

---

## Production Benefits

- Team Collaboration
- Centralized State
- Infrastructure Consistency
- Reduced Configuration Drift
- Disaster Recovery
