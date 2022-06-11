#!/bin/bash

set -e

CURRENT_DIR="$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
. "$CURRENT_DIR/redis.cnf"

# Update lock redis connection
function update_framework_yaml() {
  cp $CURRENT_DIR"/framework.yaml.dist" framework.yaml
  sed -i -e "s/|REDIS_SESSION_DB|/$REDIS_SESSION_DB/g" framework.yaml &&
    sed -i -e "s/|REDIS_LOCK_DB|/$REDIS_LOCK_DB/g" framework.yaml &&
    sed -i -e "s/|REDIS_PORT|/$REDIS_PORT/g" framework.yaml &&
    sed -i -e "s/|REDIS_USER|/$REDIS_USER/g" framework.yaml &&
    sed -i -e "s/|REDIS_PASSWORD|/$REDIS_PASSWORD/g" framework.yaml &&
    sed -i -e "s/|REDIS_URL|/$REDIS_URL/g" framework.yaml &&
    sed -i -e "s+|REDIS_DSN|+$REDIS_DSN+g" framework.yaml
}

# Update shopware redis connection
function update_shopware_yaml() {
  cp $CURRENT_DIR"/shopware.yaml.dist" shopware.yaml
  sed -i -e "s/|REDIS_CART_DB|/$REDIS_CART_DB/g" shopware.yaml &&
    sed -i -e "s/|REDIS_INCREMENT_USER_DB|/$REDIS_INCREMENT_USER_DB/g" shopware.yaml &&
    sed -i -e "s/|REDIS_INCREMENT_QUEUE_DB|/$REDIS_INCREMENT_QUEUE_DB/g" shopware.yaml &&
    sed -i -e "s/|REDIS_NUMERRANGE_DB|/$REDIS_NUMERRANGE_DB/g" shopware.yaml &&
    sed -i -e "s/|REDIS_PORT|/$REDIS_PORT/g" shopware.yaml &&
    sed -i -e "s/|REDIS_USER|/$REDIS_USER/g" shopware.yaml &&
    sed -i -e "s/|REDIS_PASSWORD|/$REDIS_PASSWORD/g" shopware.yaml &&
    sed -i -e "s/|REDIS_URL|/$REDIS_URL/g" shopware.yaml &&
    sed -i -e "s+|REDIS_DSN|+$REDIS_DSN+g" shopware.yaml
}

update_framework_yaml
update_shopware_yaml
