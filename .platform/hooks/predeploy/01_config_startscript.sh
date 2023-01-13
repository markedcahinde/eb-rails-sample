#!/bin/bash

EB_APP_STAGING_DIR=$(/opt/elasticbeanstalk/bin/get-config platformconfig -k AppStagingDir)
chmod +x $EB_APP_STAGING_DIR/start_app.sh
