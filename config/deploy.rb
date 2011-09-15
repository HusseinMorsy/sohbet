require 'bundler/capistrano'

# ===================
# = Global Settings =
# ===================
set :application, "sohbet"
set :domain, "www.sohbetapp.com"
set :user, "deploy"
set :use_sudo, false
set :rails_env, "production"

# =======
# = SCM =
# =======
set :repository,  "git@github.com:HusseinMorsy/sohbet.git"
set :scm, :git
set :branch, "master"
set :deploy_to, "/srv/www/#{application}"
#set :bundle_dir, "#{shared_path}/bundled_gems"

# =========
# = Roles =
# =========
role :web, "#{domain}"                          # Your HTTP server, Apache/etc
role :app, "#{domain}"                          # This may be the same as your `Web` server
role :db,  "#{domain}", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
#
after "deploy:finalize_update", "deploy:symlink_database_yml"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  desc "create symlink for fileuploads"
  task :symlink_database_yml, :roles => :web do
    run "ln -sf #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end
