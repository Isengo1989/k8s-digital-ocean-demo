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

