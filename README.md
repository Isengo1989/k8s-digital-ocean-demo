# k8s-digital-ocean-demo
This repo is to showcase a setup for shopware 6 with digital ocean managed k8s


## Doctl Database Setup

Choose your region, size and engine

https://docs.digitalocean.com/reference/doctl/reference/databases/create/

```
doctl databases create shopware6 --engine=mysql \
 --region=fra1 \
 --size=db-s-2vcpu-4gb
```