#!/bin/bash

set -x

amazon-linux-extras install postgresql14
bundle config set --local path build/gems
