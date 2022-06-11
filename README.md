# k8s-digital-ocean-demo
This repo is to showcase a setup for shopware 6 with digital ocean managed k8s


## Doctl Mysql Database Setup

Choose your region, size and engine.

In our case a 2 CPU / 4GB Mysql DB with Mysql 8.0 and in the frankfurt region.

https://docs.digitalocean.com/reference/doctl/reference/databases/create/

```
doctl databases create shopware6-mysql --engine=mysql \
 --region=fra1 \
 --size=db-s-2vcpu-4gb \
 --num-nodes=2 \ 
```

:warning: Secure your DB after creation

https://cloud.digitalocean.com/databases/shopware6-mysql/settings?section=trustedSources


## Doctl Redis Database Setup

Choose your region, size and engine.

In our case a 2 CPU / 4GB Redis 6 and in the frankfurt region.

https://docs.digitalocean.com/reference/doctl/reference/databases/create/

```
doctl databases create shopware6-redis --engine=redis \
 --region=fra1 \
 --size=db-s-2vcpu-4gb \
 --num-nodes=2 \ 
```