# 🛠️ AutoPilotOps-AI-Driven-Self-Healing-Cloud-Infrastructure– Local Development Requirements

This document outlines the tools required to run and contribute to the AutoPilotOps project.

---

## ✅ System Requirements

| Tool              | Version          | Purpose                               |
|-------------------|------------------|----------------------------------------|
| Git               | Latest           | Source control                         |
| Docker            | 20.x+            | Containerization                        |
| Python            | 3.11+            | ML engine + scripts                    |
| pip / poetry       | Latest           | Python package management              |
| Terraform         | 1.5+             | Infrastructure as Code (AWS/GCP)      |
| kubectl           | v1.27+           | Kubernetes CLI                         |
| Helm              | v3+              | Kubernetes package manager             |
| Minikube or Kind  | Latest           | Local Kubernetes Cluster               |
| Node.js (optional)| 18.x+            | If frontend dashboard is added later  |
| Tilt / Skaffold   | (optional)       | Rapid local K8s dev (live reloading)  |

---

## 🔁 Optional Enhancements

| Tool            | Purpose                      |
|-----------------|------------------------------|
| VSCode          | Recommended IDE              |
| K9s             | Terminal UI for Kubernetes   |
| Lens            | GUI for Kubernetes           |
| AWS CLI         | AWS infra provisioning       |
| Terraform Cloud | Manage TF state & workflows  |

---

## 🧪 Test Setup

Run the following to confirm setup:

```bash
docker --version
python --version
terraform -version
kubectl version --client
helm version
aws --version

```


