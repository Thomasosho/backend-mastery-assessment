# Final Quiz

---

## 1. What is the difference between Docker and Kubernetes?

- **Docker:**

  - A platform for creating, deploying, and running applications in **containers**.
  - Containers are lightweight, portable, and isolated environments that package an application and its dependencies.
  - Docker is used to build and run individual containers.

- **Kubernetes:**
  - A container orchestration platform for managing and scaling containerized applications.
  - Automates deployment, scaling, and management of containers across multiple hosts.
  - Works with Docker (or other container runtimes) to manage clusters of containers.

**Key Difference:**  
Docker is used to create and run containers, while Kubernetes is used to manage and scale multiple containers across a cluster.

---

## 2. How do you create a Docker container?

1. **Write a Dockerfile:**

   - A Dockerfile is a script that defines the steps to create a Docker image.
   - Example Dockerfile:
     ```dockerfile
     FROM node:14
     WORKDIR /app
     COPY package.json .
     RUN npm install
     COPY . .
     CMD ["node", "app.js"]
     ```

2. **Build the Docker Image:**

   - Use the `docker build` command to create an image from the Dockerfile.
   - Example:
     ```bash
     docker build -t my-node-app .
     ```

3. **Run the Docker Container:**
   - Use the `docker run` command to start a container from the image.
   - Example:
     ```bash
     docker run -p 3000:3000 my-node-app
     ```

---

## 3. What command is used to scale a Kubernetes deployment?

- Use the `kubectl scale` command to scale a Kubernetes deployment.
- Example:
  ```bash
  kubectl scale deployment/my-app --replicas=5
  ```
