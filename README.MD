# Terraform at Scale 🚀

[![frontdoor-aks-nginx](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml)
[![frontdoor-app-service](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml)

---

**Terraform at Scale** is a project made to provide resources past documentation on how to achieve efficient
and effective regional or global scale using the Azure platform.

It contains some common and not so common examples of scenarios some engineers may find themselves in when needing
to take their organisation or hobby to other regions or to a global scale using examples supported by pure Terraform
with no edge cases requiring management of resources outside of Terraform.

---

## Requirements

| Name      | Version |
|-----------|---------|
| Terraform | 1.0+    |

---

## Examples

- [**Frontdoor + AKS + Nginx Ingress Controller:**](./frontdoor-aks-nginx) This example demonstrates how Terraform is
  used to facilitate a Frontdoor implementation with Azure Kubernetes Service, and it's Nginx Ingress Controller.
- [**Frontdoor + App Service:**](./frontdoor-aks-nginx) This example demonstrates how Terraform is used to facilitate a
  Frontdoor implementation with Dev, Test and Prod App Service deployments in a multi region scenario (United States and
  Australia)