set :rails_env, "production"

set :application, "michaelthethomas"
set :repository,  "git://github.com/mthomas22/michaelthethomas.git"
set :user, "root"
set :password, "thomas3l5feX"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_via, :copy
set :deploy_to, "/var/www/apps/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
default_run_options[:pty] = true
set :scm, :git
set :scm_username, "mthomas22"
set :scm_passphrase, "password"

set :branch, "master"
set :git_shallow_clone, 1


role :app, "michaelthethomas.com"
role :web, "michaelthethomas.com"
# role :db,  "your db-server here", :primary => true