#!/bin/bash

set -x

/bin/sh -c rbenv global

chown -R webapp: /var/app/build/gems || echo "run failed"
chown -R webapp: /var/app/node_modules || echo "run failed"

  /bin/su webapp -c bundle exec /opt/elasticbeanstalk/config/private/checkforraketask.rb assets:precompile
  /bin/su webapp -c bundle exec /opt/elasticbeanstalk/config/private/checkforraketask.rb db:migrate
