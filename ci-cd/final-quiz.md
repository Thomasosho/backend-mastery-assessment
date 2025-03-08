# Final Quiz

---

## 1. What is the difference between CI and CD?

- **CI (Continuous Integration):**

  - A practice where developers frequently merge their code changes into a shared repository.
  - Each merge triggers an automated build and test process to detect integration issues early.
  - Focuses on **integrating code changes** and ensuring they work together.

- **CD (Continuous Delivery/Deployment):**
  - **Continuous Delivery:** Ensures that code changes are automatically tested and ready for deployment to production at any time.
  - **Continuous Deployment:** Automatically deploys code changes to production after passing tests.
  - Focuses on **delivering or deploying code changes** to users quickly and reliably.

**Key Difference:**  
CI is about integrating and testing code changes, while CD is about delivering or deploying those changes to production.

---

## 2. How does a Jenkins pipeline work?

- **Jenkins Pipeline:**

  - A suite of plugins that supports implementing and integrating **continuous delivery pipelines** into Jenkins.
  - Defined using a `Jenkinsfile`, which is a text file written in Groovy syntax.

- **How It Works:**

  1. **Stages:** A pipeline is divided into stages (e.g., Build, Test, Deploy).
  2. **Steps:** Each stage contains steps (e.g., commands or scripts) to execute tasks.
  3. **Automation:** The pipeline automatically runs the defined stages and steps when triggered (e.g., by a code commit).

- **Example Jenkinsfile:**
  ```groovy
  pipeline {
      agent any
      stages {
          stage('Build') {
              steps {
                  echo 'Building the application...'
                  sh 'npm install'
              }
          }
          stage('Test') {
              steps {
                  echo 'Running tests...'
                  sh 'npm test'
              }
          }
          stage('Deploy') {
              steps {
                  echo 'Deploying the application...'
                  sh 'npm run deploy'
              }
          }
      }
  }
  ```
