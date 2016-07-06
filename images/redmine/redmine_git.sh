#/bin/bash

apt-get update
apt-get install -y  build-essential libssh2-1 libssh2-1-dev cmake libgpg-error-dev

su -l redmine

REDMINE_ROOT=/home/redmine/redmine

cd $REDMINE_ROOT/plugins
git clone https://github.com/jbox-web/redmine_bootstrap_kit.git
cd redmine_bootstrap_kit/
git checkout 0.2.4

cd $REDMINE_ROOT/plugins
git clone https://github.com/jbox-web/redmine_git_hosting.git
cd redmine_git_hosting/
git checkout 1.2.0


cd $REDMINE_ROOT
bundle install --without development test
bundle exec rake redmine:plugins:migrate RAILS_ENV=production NAME=redmine_git_hosting
