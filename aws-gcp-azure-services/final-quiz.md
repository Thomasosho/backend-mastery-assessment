# Final Quiz

---

## 1. What’s the difference between AWS EC2, GCP Compute Engine, and Azure VMs?

- **AWS EC2 (Elastic Compute Cloud):**

  - A scalable virtual server service provided by Amazon Web Services (AWS).
  - Offers a wide range of instance types, operating systems, and pricing models (e.g., On-Demand, Spot Instances, Reserved Instances).
  - Integrated with other AWS services like S3, RDS, and Lambda.

- **GCP Compute Engine:**

  - A virtual machine service provided by Google Cloud Platform (GCP).
  - Known for its live migration feature, which allows VMs to be moved without downtime.
  - Offers custom machine types and preemptible instances (similar to AWS Spot Instances).

- **Azure VMs (Virtual Machines):**
  - A virtual machine service provided by Microsoft Azure.
  - Tightly integrated with Microsoft products like Windows Server, Active Directory, and SQL Server.
  - Offers hybrid cloud capabilities, allowing seamless integration with on-premises infrastructure.

**Key Difference:**  
While all three provide virtual machine services, they differ in pricing models, integrations, and unique features (e.g., live migration in GCP, hybrid cloud in Azure).

---

## 2. How does AWS S3 compare to Azure Blob Storage?

- **AWS S3 (Simple Storage Service):**

  - A highly scalable object storage service.
  - Organizes data into "buckets" and supports features like versioning, lifecycle policies, and cross-region replication.
  - Widely used for backup, data archiving, and hosting static websites.

- **Azure Blob Storage:**
  - A scalable object storage service provided by Microsoft Azure.
  - Organizes data into "containers" and supports tiered storage (Hot, Cool, Archive).
  - Integrated with Azure services like Azure Functions and Azure Data Lake.

**Key Difference:**  
Both are object storage services, but AWS S3 is more mature and widely adopted, while Azure Blob Storage offers better integration with Microsoft’s ecosystem and tiered storage options.

---

## 3. What is the main advantage of serverless computing?

- **Main Advantage:**  
  Serverless computing allows developers to focus on writing code without managing the underlying infrastructure. Key benefits include:
  - **No Server Management:** The cloud provider automatically handles server provisioning, scaling, and maintenance.
  - **Cost Efficiency:** You only pay for the actual compute time used (e.g., per function execution).
  - **Automatic Scaling:** The service scales automatically based on demand, ensuring optimal performance.
  - **Faster Development:** Developers can deploy code quickly without worrying about infrastructure.

**Examples:**

- AWS Lambda (AWS)
- Google Cloud Functions (GCP)
- Azure Functions (Azure)

---

# Summary

- AWS EC2, GCP Compute Engine, and Azure VMs are virtual machine services with unique features and integrations.
- AWS S3 and Azure Blob Storage are object storage services, with S3 being more mature and Blob Storage offering tiered storage.
- The main advantage of serverless computing is that it eliminates the need to manage infrastructure, enabling faster development and cost efficiency.
