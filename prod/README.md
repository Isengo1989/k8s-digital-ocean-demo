# Shopware 6 config files
This folders purpose is to share all performance configs that are currently possible.

You can find them [here](https://developer.shopware.com/docs/guides/hosting/performance/performance-tweaks
) as well, but spread out



## Caching

### HTTP

**FILE** .env
```
# Enable HTTP CACHE
SHOPWARE_HTTP_CACHE_ENABLED=1

# Save query to Mysql on the app_config table
SHOPWARE_CACHE_ID=28u89u9j28934fj293jf923j9sdjj92fj92
```

### Cart

:warning: Carefully set this. Everything gets cached! Rules on customer groups for pricing etc. will not work

```
shopware:
    cache:
        invalidation:
            http_cache: []
```

:warning: Secure your DB after creation

https://cloud.digitalocean.com/databases/shopware6-mysql/settings?section=trustedSources


### Doctl Redis Database Setup

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