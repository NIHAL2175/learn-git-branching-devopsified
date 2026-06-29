<div align="center">

# 🚀 DevOpsified Learn Git Branching

 

![Docker](https://img.shields.io/badge/Docker-Container-2496ED?logo=docker)
![Kubernetes](https://img.shields.io/badge/Kubernetes-K8s-326CE5?logo=kubernetes)
![Helm](https://img.shields.io/badge/Helm-Charts-0F1689?logo=helm)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI/CD-2088FF?logo=github-actions)
![ArgoCD](https://img.shields.io/badge/ArgoCD-GitOps-EF7B4D?logo=argo)
![NGINX](https://img.shields.io/badge/NGINX-Ingress-009639?logo=nginx)

![demo-gif](https://user-images.githubusercontent.com/6324814/108740487-02c3c400-7536-11eb-9dd1-53275cdf76fb.gif)

</div>

---

# 🧠 Project Overview

DevOpsified Learn Git Branching is an enhanced version of the Learn Git Branching project, redesigned as a complete DevOps and GitOps implementation.

Instead of simply running the application locally, this project demonstrates how a modern application is developed, containerized, deployed, automated and continuously delivered using cloud-native tools.

The project covers every stage of the software delivery lifecycle including Docker, Kubernetes, Helm, GitHub Actions, Argo CD and GitOps deployment strategies.

---

# 📂 Project Directories

| Folder | Description |
|----------|-------------|
| 📁 assets | Images, icons, branding and static assets |
| 📁 src | Source code of DevOpsified Learn Git Branching |
| 📁 build | Production build |
| 📁 scripts | Helper scripts |
| 📁 helm | Helm Chart for Kubernetes deployment |
| 📁 k8s | Kubernetes Manifests |
| 📁 .github/workflows | GitHub Actions CI Pipeline |
| 📁 generatedDocs | Auto generated documentation |
| 📄 Dockerfile | Multi-stage Docker image |
| 📄 package.json | Node project dependencies |
| 📄 vite.config.js | Vite configuration |
| 📄 vercel.json | Vercel deployment configuration |
| 📄 kind-config.yaml | Kind cluster configuration |

---

# 🎯 Objectives

- Convert Learn Git Branching into a DevOps project
- Dockerize the application
- Deploy on Kubernetes
- Package deployment using Helm
- Implement CI using GitHub Actions
- Implement GitOps CD using Argo CD
- Deploy on Kind Kubernetes Cluster
- Deploy frontend using Vercel
- Automate Helm image updates
- Demonstrate complete DevOps workflow

---

# 🔀 End-to-End DevOps Workflow

![image](https://github.com/user-attachments/assets/45f4ef12-c5b5-4247-9d43-356b5dfb671b)

---

# 🔧 Tech Stack

| Layer | Technology | Purpose |
|---------|------------|---------|
| Frontend | HTML, CSS, JavaScript | Interactive Git Learning |
| Build Tool | Vite | Frontend Build |
| Container | Docker | Containerization |
| Orchestration | Kubernetes | Container Orchestration |
| Package Manager | Helm | Kubernetes Packaging |
| CI | GitHub Actions | Continuous Integration |
| CD | Argo CD | GitOps Continuous Delivery |
| Registry | Docker Hub | Container Registry |
| Local Cluster | Kind | Local Kubernetes |
| Hosting | Vercel | Frontend Hosting |
| Source Control | GitHub | Version Control |

---

# 🐳 Docker Implementation

The application is containerized using a multi-stage Docker build.

### Benefits

- Lightweight Image
- Faster Deployment
- Portable
- Consistent Environment
- Easy Distribution

### Docker Workflow

```
Application
      │
Docker Build
      │
Docker Image
      │
Docker Hub
      │
Kubernetes Deployment
```

---

# ☸️ Kubernetes Implementation

The application is deployed on a **Kind (Kubernetes in Docker)** cluster using Kubernetes manifests.

### Kubernetes Resources

| Resource | Purpose |
|----------|---------|
| Deployment | Manages Pods |
| Service | Exposes the application |
| Ingress | Routes external traffic |
| Namespace | Resource isolation |

---

## Kubernetes Architecture

```

Internet
│
▼
Ingress
│
▼
Service
│
▼
Deployment
│
▼
Pods
│
▼
DevOpsified Learn Git Branching

```

---

# 📦 Helm Chart Implementation

Instead of manually applying Kubernetes manifests, this project packages all Kubernetes resources into a Helm Chart.

Helm simplifies deployment by allowing version-controlled, reusable, and configurable Kubernetes applications.

## Helm Directory

```

helm/
│
├── Chart.yaml
├── values.yaml
├── charts/
└── templates/
├── deployment.yaml
├── service.yaml
├── ingress.yaml
├── _helpers.tpl

```

---

## Helm Advantages

- Easy deployment
- Version management
- Rollback support
- Parameterized values
- Reusable templates
- Production ready

---

# ⚙️ GitHub Actions CI Pipeline Implementation

This project uses GitHub Actions for Continuous Integration.

Every push to the **main** branch automatically starts the pipeline.

---

## Pipeline Workflow

```

Build
│
▼
Code Quality
│
▼
Push
│
▼
Update Helm Chart

```

---

## 1️⃣ Build Stage

The Build stage performs:

- Install dependencies
- Build application
- Verify project structure
- Generate production build

---

## 2️⃣ Code Quality Stage

The Code Quality stage performs:

- Linting
- Code formatting checks
- Static analysis
- Build verification

---

## 3️⃣ Push Stage

The Push stage:

- Builds Docker image
- Tags image
- Logs into Docker Hub
- Pushes image to Docker Hub

Example:

```

docker build -t username/devopsified\:latest .

docker push username/devopsified\:latest

```

---

## 4️⃣ Update Helm Chart

After the Docker image is pushed,

GitHub Actions automatically:

- Updates image tag
- Commits changes
- Pushes updated values.yaml
- Triggers GitOps deployment

This removes manual deployment steps.

---

# 🔄 GitOps using ArgoCD Implementation

Argo CD continuously watches the GitHub repository.

Whenever Helm values change,

Argo CD detects the update and synchronizes the Kubernetes cluster automatically.

No manual deployment commands are required.

---

## GitOps Flow

```

GitHub
│
▼
Updated Helm Chart
│
▼
Argo CD
│
▼
Sync
│
▼
Kind Cluster
│
▼
Rolling Update

```

---

# 📂 Folder Structure

```

DevOpsified-Learn-Git-Branching/
│
├── .github/
│ └── workflows/
│
├── assets/
│
├── build/
│
├── generatedDocs/
│
├── helm/
│
├── k8s/
│
├── scripts/
│
├── src/
│
├── Dockerfile
├── package.json
├── package-lock.json
├── vite.config.js
├── vercel.json
├── kind-config.yaml
└── README.md

```
---

# 🚀 Features

## Application

- Interactive Git learning platform
- Custom DevOpsified branding
- Responsive UI
- Modern interface
- Browser-based learning

---

## DevOps

- Dockerized application
- Kubernetes deployment
- Helm packaging
- GitHub Actions CI
- GitOps deployment
- Argo CD automation
- Kind Kubernetes Cluster
- Docker Hub integration
- Vercel deployment

---

## CI/CD Automation

✔ Automatic Build

✔ Code Quality Verification

✔ Docker Image Build

✔ Docker Hub Push

✔ Helm Chart Update

✔ GitOps Deployment

✔ Continuous Delivery

---

# 📊 Project Architecture

```
                          Developer
                              │
                              ▼
                     GitHub Repository
                              │
                              ▼
                     GitHub Actions CI
                 ┌────────────┼────────────┐
                 │            │            │
                 ▼            ▼            ▼
             Build     Code Quality      Push
                                         │
                                         ▼
                              Docker Hub Registry
                                         │
                                         ▼
                              Update Helm Chart
                                         │
                                         ▼
                                 GitHub Repository
                                         │
                                         ▼
                                     Argo CD
                                         │
                                         ▼
                                 Kind Kubernetes
                                         │
                                         ▼
                                   Helm Release
                                         │
                                         ▼
                                  Kubernetes Pods
                                         │
                                         ▼
                         DevOpsified Learn Git Branching
```

---

# 🎯 Learning Outcomes

Through this project, you will understand:

- Git Fundamentals
- Docker Containerization
- Kubernetes Concepts
- Helm Package Management
- GitHub Actions
- CI/CD Pipeline Design
- GitOps Principles
- Argo CD
- Container Registries
- Kubernetes Networking
- Ingress Controllers
- Continuous Deployment
---
<div align="center">

## 👨‍💻 Author

**NIHAL N** — DevSecOps & Cloud Engineer

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Nihal%20N-blue?logo=linkedin)](https://www.linkedin.com/in/nihal-n-cse/)

---

⭐ *If this project helped you learn DevSecOps, give it a star and share it with your team!*

</div>