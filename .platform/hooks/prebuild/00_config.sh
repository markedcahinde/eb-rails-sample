#!/bin/bash

set -x

amazon-linux-extras install postgresql14
mkdir -p /var/app/build/gems
chown webapp: /var/app/build/gems
ls -sf /var/app/build/gems ./build/gems
bundle config set --local path build/gems

mkdir -p /var/app/node_modules
chown webapp: /var/app/node_modules
ln -sf /var/app/node_modules ./node_modules
