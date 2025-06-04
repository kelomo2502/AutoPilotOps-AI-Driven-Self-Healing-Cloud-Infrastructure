# AutoPilotOps-AI-Driven-Self-Healing-Cloud-Infrastructure

## Phase 1: Architecture & Planning

- Architecture Drawing

![Architecure Diagram](./images/architecture-img)

## 🧠 Architecture Breakdown

- 🔁 1. CI/CD Pipeline (Bottom Left)
  This is where application builds, tests, and deployments
  begin.

- Tools like GitHub Actions, GitLab CI, or Jenkins automate
  the pipeline. The CI/CD pipeline pushes deployments to
  Kubernetes.

## ☸️ 2. Kubernetes Cluster

- Acts as the central environment where all workloads (apps,
  microservices) run.

- This cluster is monitored continuously and is the heart of
  the infrastructure.

- It sends telemetry (logs/metrics) to the monitoring stack.

## 📊 3. Observability Stack

- Logs (from apps and system events) and Metrics (CPU, memory, 
  latency) are collected.

- These feed into the Self-Healing Infrastructure layer, which 
  detects abnormal behavior.

## 🤖 4. Self-Healing Infra + AI Monitoring Engine
  
- The self-healing engine receives logs/metrics and forwards 
  them to the AI Monitoring Engine.

- The AI engine (e.g., Isolation Forest, LSTM models) analyzes 
  patterns and predicts issues before they occur.

- It can trigger alerts, restart pods, scale deployments, or 
  notify the CI/CD system to rollback.
