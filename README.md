# 🚀 CI/CD Pipeline for Containerised AI Model Deployment on AWS ECS

This project demonstrates how to automate the deployment of a containerized AI model using GitHub Actions, Docker, and AWS ECS (Fargate). The focus is on implementing a complete DevOps pipeline for model versioning, testing, secure deployment, and rollback support — without relying on manual infrastructure management.

---

## 📌 Project Overview

- **Goal:** Deploy and manage a lightweight AI model using a CI/CD pipeline.
- **Infrastructure:** AWS ECS (Fargate), ECR, CloudWatch, IAM, GitHub Actions
- **DevOps Tools:** Terraform, Docker, GitHub Actions
- **Focus Areas:** Infrastructure as Code (IaC), CI/CD, container orchestration, secrets management, rollback and update strategies.

---

## 🧠 Use Case

This project is designed for cloud engineers, DevOps engineers, and AI infrastructure developers who want to:

- Automate ML model deployment using CI/CD
- Use AWS ECS and ECR in a scalable and serverless fashion
- Improve reliability with IaC, monitoring, and autoscaling

---

## ⚙️ How It Works

### 1. Local Development
- You develop and test your FastAPI app + model locally in Docker.
- Ensure all Python dependencies are in `requirements.txt`.

### 2. Version Control
- You push changes to GitHub.
- This triggers the GitHub Actions CI/CD pipeline.

### 3. CI/CD Pipeline (GitHub Actions)
- Lints and tests your code (optional).
- Builds and tags the Docker image with the Git commit SHA.
- Pushes image to Amazon ECR.
- Updates ECS service with the new task definition automatically.

### 4. AWS ECS Fargate
- Pulls the latest Docker image from ECR.
- Deploys it in a secure, auto-scalable Fargate task.
- Logs and metrics are pushed to CloudWatch.

---

## 🛠️ Tools & Services

| Tool             | Purpose                                      |
|------------------|----------------------------------------------|
| **Docker**       | Containerize the app                         |
| **FastAPI**      | Serve the AI model via HTTP                  |
| **AWS ECR**      | Store Docker images                          |
| **AWS ECS (Fargate)** | Run the container serverlessly             |
| **Terraform**    | Define AWS infrastructure as code            |
| **GitHub Actions** | Automate build, test, and deployment         |
| **CloudWatch**   | Logging and basic monitoring                 |

---

## ✅ Features

- [x] Infrastructure as Code (Terraform)
- [x] ECS service updates with new image versions
- [x] GitHub Actions CI/CD pipeline
- [x] Secrets managed with GitHub + AWS IAM roles
- [x] Auto rollback on ECS deployment failure
- [x] FastAPI health check endpoint
- [x] Minimal AI model packaged and served
- [x] Secure and cost-effective serverless infra (Fargate)

---

## 🚀 Getting Started

### Prerequisites

- AWS CLI configured  
- Terraform installed  
- Docker installed  
- GitHub repo with Actions enabled  
- AWS IAM user/role with permissions for ECS, ECR, IAM, CloudWatch

---

### Setup Instructions

1. **Clone the repo**  
   ```bash
   git clone https://github.com/yourusername/ecs-llm-ci-cd.git
   cd ecs-llm-ci-cd
## 📣 Author
- **Dalitso Banda**
- **Cloud Engineer | Infrastructure for AI | DevOps | Systems Design**
