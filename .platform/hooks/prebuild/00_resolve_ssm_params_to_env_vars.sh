#!/bin/bash

export AWS_REGION=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region)
export LC_ALL=C

EB_ENV_VAR_FILE="/opt/elasticbeanstalk/deployment/env_temp"
/opt/elasticbeanstalk/bin/get-config environment | jq -r 'to_entries | .[] | "\(.key)=\(.value)"'  > $EB_ENV_VAR_FILE

i=0
for envvar in $(cat $EB_ENV_VAR_FILE); do
envvar=$(echo "${envvar}" | perl -p \
    -e 's|{{resolve:ssm(?:-secure)-env:([a-zA-Z0-9_.-/]+?):(\d+?)}}|qx(aws ssm get-parameter-history --name "$1" --with-decryption --query Parameters[?Version==\\\x60$2\\\x60].Value --output text --region $ENV{AWS_REGION}) or die("Failed to get SSM parameter named \"$1\" with version \"$2\"")|eg;' \
    -e 's|{{resolve:ssm(?:-secure)-env:([a-zA-Z0-9_.-/]+?)}}|qx(aws ssm get-parameter --name "$1" --with-decryption --query Parameter.Value --output text --region $ENV{AWS_REGION}) or die("Failed to get SSM parameter named \"$1\"")|eg;'| tr -d '[:space:]')
export $envvar
((i++)) || :
done
