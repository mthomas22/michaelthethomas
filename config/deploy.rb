set :rails_env, "production"

set :application, "michaelthethomas"
set :repository,  "git://github.com/mthomas22/michaelthethomas.git"
# Old server info
# set :user, "root"
# set :password, "thomas3l5feX"
set :user, "root"
set :password, "michaelthethomas30xToN2Xq"
set :use_sudo, false

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

# Old server info
# role :app, "michaelthethomas.com"
# role :web, "michaelthethomas.com"
# role :db,  "michaelthethomas.com", :primary => true

role :app, "173.203.125.236"
role :web, "173.203.125.236"
role :db,  "173.203.125.236", :primary => true

namespace :passenger do
  desc "Restart Application"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
  
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
    # nothing -- need to override default cap start task when using Passenger
  end
end

after "deploy", "deploy:cleanup"