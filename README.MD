# Terraform at Scale 🚀

[![frontdoor-aks-nginx](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml)
[![frontdoor-app-service](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml)
[![frontdoor-function-app](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-function-app.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-function-app.yml)
[![frontdoor-container-app](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-container-app.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-container-app.yml)

---

**Terraform at Scale** provides examples and best practices for using Terraform to manage infrastructure at scale.
Whether you're an operations engineer, a system administrator, or a DevOps engineer, this repository aims to give you
insight past the documentation on what it looks like and how to set up a highly scalable, extensible and efficient Azure
infrastructure using 100% Terraform allowing you to reach regional and global scale for your organisation's or hobby
projects.

---

## Requirements

| Name      | Version |
|-----------|---------|
| Terraform | 1.0+    |

---

## Examples

- [**Frontdoor + AKS + Nginx Ingress Controller:**](./azure/frontdoor-aks-nginx) This example demonstrates how Terraform is
  used to facilitate a Frontdoor implementation with Azure Kubernetes Service, and it's Nginx Ingress Controller.
- [**Frontdoor + App Service:**](./azure/frontdoor-app-service) This example demonstrates how Terraform is used to facilitate
  a Frontdoor implementation with Dev, Test and Prod App Service deployments in a multi region scenario (United States
  and Australia).
- [**Frontdoor + Function App:**](./azure/frontdoor-function-app) This example demonstrates how Terraform is used to facilitate
  a Frontdoor implementation with Dev, Test and Prod Function App deployments in a multi region scenario (United States
  and Australia).
- [**Frontdoor + Container App:**](./azure/frontdoor-container-app) This example demonstrates how Terraform is used to
  facilitate a Frontdoor implementation with two Container App deployments in a single region. Its purpose is to
  demonstrate the connection between the two services.