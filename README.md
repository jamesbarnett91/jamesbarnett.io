# jamesbarnett.io
Config for my personal website and app stack at [jamesbarnett.io](https://jamesbarnett.io).

The infrastructure is defined and managed through Terraform which provisions a managed Kubernetes cluster in [Digital Ocean](https://www.digitalocean.com/products/kubernetes/), configures it, and applies several Helm Charts.

[Ingress-nginx](https://github.com/kubernetes/ingress-nginx/) is used as the cluster ingress, and Lets Encrypt certs are automatically requested and renewed using [cert-manager](https://github.com/jetstack/cert-manager). 

Pod resource metrics are collected using [metrics-server](https://github.com/kubernetes-sigs/metrics-server).