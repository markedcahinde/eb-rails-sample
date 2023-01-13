#!/bin/bash

set -x

/bin/sh -c rbenv global

chown -R webapp: /var/app/build/gems || echo "run failed"
chown -R webapp: /var/app/node_modules || echo "run failed"

rails_skip_asset_compilation=$(/opt/elasticbeanstalk/bin/get-config environment -k RAILS_SKIP_ASSET_COMPILATION)
rails_skip_migrations=$(/opt/elasticbeanstalk/bin/get-config environment -k RAILS_SKIP_MIGRATIONS)

if [[ $rails_skip_asset_compilation == "false" ]] || [[ -z $rails_skip_asset_compilation ]]; then
  /bin/su webapp -c bundle exec /opt/elasticbeanstalk/config/private/checkforraketask.rb assets:precompile
fi

if [[ $rails_skip_migrations == "false" ]] || [[ -z $rails_skip_migrations ]]; then
  /bin/su webapp -c bundle exec /opt/elasticbeanstalk/config/private/checkforraketask.rb db:migrate
fi
