# Frontdoor + AKS + Nginx

[![frontdoor-aks-nginx](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-aks-nginx.yml)

---

This Project uses **Azure**, **Frontdoor** and **Kubernetes** to demonstrate how we can connect **Frontdoor** to *
*Azure's Kubernetes Service (AKS)** with two exposed deployments.


---

## How does it work? (High Level)

When a request to `app.mydomain.com` is made, Frontdoor acting as Azure's first Point of Contact (PoC) routes the
request using Frontdoor's global network to **AKS**, using the **NGINX Ingress Controller** we then route the request
via the affiliated service to the pods managed by our application's deployment.

The key distinction that is made here that allows Frontdoor to work when it hits the **NGINX Ingress Controller** in our
cluster is seeing the **host header** when configuring our [origin](./modules/frontdoor/origin/origin.tf) in Frontdoor. Using the inbound IP of our cluster
we direct traffic to the cluster but using the host header, we allow ingress to route traffic to the correct services.

![](./diagram/infrastructure.svg)