# 🛡️ Automated DevSecOps Pipeline (CI/CD)

![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-Automation-blue?style=for-the-badge&logo=github-actions)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker)
![Python](https://img.shields.io/badge/Python-3.9-yellow?style=for-the-badge&logo=python)
![Security](https://img.shields.io/badge/Security-Bandit_|_Trivy_|_ZAP-red?style=for-the-badge)

## 🚀 Project Overview
This project demonstrates a fully automated **Secure CI/CD Pipeline** designed for a Python Flask application. It integrates **System Engineering** principles with **DevOps Automation** to ensure code quality, infrastructure security, and runtime protection.

## 🏗️ Architecture
The pipeline performs the following automated checks on every commit:

1.  **Build Stage:** Docker Image creation with optimized `python:3.9-slim` base.
2.  **SAST (Static Analysis):** Scans Python code for vulnerabilities using **Bandit**.
3.  **SCA (Container Security):** Scans the Docker OS for CVEs using **Trivy**.
4.  **DAST (Dynamic Analysis):** Attacks the running application using **OWASP ZAP** to find runtime issues.

## 🛠️ Tech Stack
* **Version Control:** Git & GitHub
* **CI/CD:** GitHub Actions
* **Containerization:** Docker & Docker Network
* **Security Tools:**
    * 🕵️‍♂️ **Bandit** (Code Security)
    * 🐳 **Trivy** (Image Scanning)
    * 💥 **OWASP ZAP** (Penetration Testing)

## ⚙️ Workflow Steps
The `main.yml` workflow executes the following:
1.  Checkout Code
2.  Install Dependencies
3.  **Bandit Scan** (Checks for hardcoded secrets/insecure functions)
4.  Build Docker Image
5.  **Trivy Scan** (Checks for OS-level vulnerabilities - Critical/High)
6.  Run Application (Host Network / Port Mapping)
7.  **ZAP Scan** (Dynamic Attack Simulation against `localhost`)

## 📊 Results & Evidence
* **Code Security:** Secured via Bandit (False positives handled via `#nosec`).
* **Container Security:** Reduced attack surface by switching to `slim` images.
* **Runtime Security:** Verified via ZAP baseline scan (Passing with waivers).

---
*Created by KavinduKL1 - Aspiring System & DevOps Engineer*
