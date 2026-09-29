# Interview Questions

## 1. What is Terraform State?

Terraform State is a file that maps Terraform configuration to real cloud resources. It allows Terraform to track, and manage infrastructure efficiently.

---

## 2. Why is Teraform State important?

Terraform State enables Terraform to:

- Track managed resources
- Detect infrastructure changes
- Build execution plans
- Manage dependencies
- Store outputs

---

## 3. What happens if Terraform State is deleted?

Terraform loses its record of the infrastructure it manages. Although resources still exist in AWS, Terraform treats them as unmanaged until the state is recovered or resources are imported.

---

## 4. Why should Terraform State not be stored locally in production?

Local state creates multiple copies across team members, leading to inconsistent infrastructure management and collaboration issues.

---

## 5. What is a Remote Backend?

A Remote Backend stores Terraform State in a centralized location such as Amazon S3, allowing multiple engineers to work safely on the same infrastructure.

---

## 6. Why is Amazon S3 used?

Amazon S3 provides durable, centralized storage for the Terraform State file.

---

## 7. Why is Versioning enabled?

Versioning protects Terraform State by allowing previous versions to be restored if the file is accidentally modified or deleted. 

---

## 8. Why is DynamoDB used?

DynamoDB provides state locking, ensuring only one Terraform operation modifies the state at a time.

---

## 9. What is State Locking?

State Locking prevents multiple users from modifying the same Terraform State simultaneously, avoiding corruption and conflicting infrastructure changes.

---

## 10. What is the Bootstrap Problem?

Terraform cannot use an S3 backend until the S3 bucket already exits. Therefore, backend infrastructure must be created before configuring the remote backend.

---

## 11. What is the State Migration?

State Migration is the process of moving Terraform State from one backend (such as local storage) to another (such as Amazon S3) while preserving infrastructure tracking.

---

## 12. Why are S3 and DynamoDB commonly used together?

Amazon S3 stores the Terraform State, while DynamoDB provides state locking. Together they enable safe, collaborative infrastructure management.
 
