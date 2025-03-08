# Theory

---

## 1. Explain the difference between horizontal scaling and vertical scaling with real-world examples.

- **Horizontal Scaling:**

  - Adding more machines or nodes to a system to handle increased load.
  - Example: Adding more servers to a web application to handle more users.
  - Real-world example: Netflix uses horizontal scaling to distribute its streaming service across multiple servers to handle millions of users.

- **Vertical Scaling:**
  - Increasing the resources (e.g., CPU, RAM) of an existing machine to handle increased load.
  - Example: Upgrading a database server with more RAM to improve performance.
  - Real-world example: A small e-commerce website might vertically scale its server to handle increased traffic during a sale.

**Key Difference:**  
Horizontal scaling adds more machines, while vertical scaling upgrades existing machines.

---

## 2. Compare monolithic and microservices architectures. In which scenarios would each be beneficial?

- **Monolithic Architecture:**

  - A single, unified codebase where all components (e.g., UI, business logic, database) are tightly coupled.
  - **Benefits:**
    - Easier to develop, test, and deploy for small applications.
    - Simpler debugging and monitoring.
  - **Best for:** Small teams or applications with limited complexity (e.g., a simple blog or portfolio website).

- **Microservices Architecture:**
  - An application is broken into smaller, independent services that communicate via APIs.
  - **Benefits:**
    - Scalable and flexible; each service can be developed, deployed, and scaled independently.
    - Better fault isolation; a failure in one service doesn’t affect others.
  - **Best for:** Large, complex applications with multiple teams (e.g., Netflix, Amazon).

---

## 3. Describe how Kafka or RabbitMQ helps in event-driven architecture.

- **Kafka:**

  - A distributed streaming platform that allows applications to publish and subscribe to streams of records (events).
  - Helps decouple producers (event publishers) and consumers (event subscribers).
  - Example: A user registration event can trigger multiple actions (e.g., send email, update analytics) via Kafka.

- **RabbitMQ:**
  - A message broker that enables applications to communicate asynchronously using messages.
  - Helps in load balancing and ensuring reliable message delivery.
  - Example: Processing orders in an e-commerce system, where orders are queued and processed one by one.

**Role in Event-Driven Architecture:**  
Both Kafka and RabbitMQ enable decoupling of services, ensuring scalability, reliability, and real-time processing of events.

---

## 4. What are window functions in SQL? Give an example of their usage.

- **Window Functions:**

  - Perform calculations across a set of table rows related to the current row.
  - Unlike aggregate functions, they do not group rows into a single output row.
  - Common functions: `ROW_NUMBER()`, `RANK()`, `SUM()`, `AVG()`.

- **Example:**

  ```sql
  SELECT
      employee_id,
      salary,
      AVG(salary) OVER (PARTITION BY department_id) AS avg_department_salary
  FROM employees;

  ---
  ```

## 5. Explain sharding vs replication in database scaling.

- **Sharding:**

  - Splitting a database into smaller, independent pieces (shards) distributed across multiple servers.
  - Each shard contains a subset of the data.
  - **Use case:** Horizontal scaling for large datasets (e.g., splitting user data by region).

- **Replication:**
  - Creating multiple copies of the database across different servers.
  - Improves read performance and provides fault tolerance.
  - **Use case:** High availability and read scalability (e.g., replicating a database for backup or load balancing).

**Key Difference:**  
Sharding splits data for scalability, while replication copies data for availability and performance.

---

## 6. Describe OAuth 2.0 and how it secures APIs.

- **OAuth 2.0:**

  - An authorization framework that allows third-party applications to access user data without exposing credentials.
  - Uses tokens (e.g., access tokens) to grant limited access to resources.

- **How It Secures APIs:**
  - Users authenticate with an authorization server (e.g., Google, GitHub).
  - The server issues an access token to the client application.
  - The client uses the token to access the API, ensuring credentials are not exposed.

---

## 7. Compare RESTful APIs and GraphQL APIs with their pros and cons.

- **RESTful APIs:**

  - **Pros:**
    - Simple and widely adopted.
    - Stateless and cacheable.
  - **Cons:**
    - Over-fetching or under-fetching data.
    - Multiple endpoints for different resources.

- **GraphQL APIs:**
  - **Pros:**
    - Single endpoint for all queries.
    - Clients request only the data they need.
  - **Cons:**
    - Complexity in implementation.
    - Not as cacheable as REST.

**Use Cases:**

- REST: Simple, standardized APIs (e.g., public APIs).
- GraphQL: Complex, data-intensive applications (e.g., social media platforms).

---

## 8. Explain how Infrastructure as Code (IaC) using Terraform helps in cloud deployment.

- **Infrastructure as Code (IaC):**

  - Managing and provisioning infrastructure through code instead of manual processes.
  - Tools like Terraform allow you to define infrastructure in configuration files.

- **How Terraform Helps:**
  - **Automation:** Automates the creation, updating, and deletion of cloud resources.
  - **Consistency:** Ensures consistent environments across development, staging, and production.
  - **Version Control:** Infrastructure configurations can be versioned and tracked in Git.
  - **Multi-Cloud Support:** Works with multiple cloud providers (e.g., AWS, Azure, GCP).

**Example:**

- Define an AWS EC2 instance in a Terraform configuration file:
  ```hcl
  resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
  }
  ```
