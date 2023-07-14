# Frontdoor + App Services (Multi Region)

[![frontdoor-app-service](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml/badge.svg)](https://github.com/kashw2/Terraform-at-Scale/actions/workflows/frontdoor-app-service.yml)

---

This Project uses **Azure**, **Frontdoor** and **App Services** (Web Apps) to demonstrate
how we can efficiently and effectively scale in **multiple regions** an **App Service**
with the power of Azure's global network with **Frontdoor**.

---

## How does it work? (High Level)

When a request to `dev.mydomain.com` is made, Frontdoor acts as the first PoC (Point of Contact)
between the web and your infrastructure.

Using Azure's global Frontdoor network. Frontdoor will deliver your request to an origin (your service) based
off some default rules that Frontdoor has or rules that you define yourself. The default behavior of Frontdoor will be
to route your traffic to the origins with the lowest latency however you are free to add your own which overrule the
default.

Frontdoor also has the ability to work alongside its own WAF (Web Application Firewall). Using this you are able to
define how to handle requests that are trapped by your policy.

Via origin groups, Frontdoor will probe your services for their health on a period that is defined by the user.
If an origin is determined to be down as a result of a health probe, Frontdoor will automatically divert traffic to
another origin.

![](./diagram/infrastructure.svg)