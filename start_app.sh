AWS_REGION=$(curl --silent http://169.254.169.254/latest/dynamic/instance-identity/document | jq -r .region)
export RDS_DB_PASSWORD=$(aws ssm get-parameter \
      --name /production/db_password \
      --with-decryption --output text \
      --query Parameter.Value --region $AWS_REGION)
exec bundle exec puma -C /opt/elasticbeanstalk/config/private/pumaconf.rb
