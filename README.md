# Shopware 6 + K8s on Digital Ocean
This repo is to showcase a setup for shopware 6 with digital ocean managed k8s

## Doctl Droplet Setup for POC

Choose your region, size and image. The purpose of this droplet is simply to test the first part of the tutorial and get a running shopware 6 envirmoent without k8s and container registry to validate the running system.

In our case a 2 CPU / 4GB Mysql DB with Mysql 8.0 and in the frankfurt region.

https://docs.digitalocean.com/reference/doctl/reference/databases/create/

```
doctl compute droplet create shopware6-web --image ubuntu-20-04-x64  \
 --region=fra1 \
 --size=s-2vcpu-4gb \
 --ssh-keys=ADD_YOUR_SSH_FINGERPRINTS
```

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

:warning: Secure your DB after creation

https://cloud.digitalocean.com/databases/shopware6-redis/settings?section=trustedSources
