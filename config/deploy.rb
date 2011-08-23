set :application, "aust_site"
set :repository,  "git://github.com/austcms/aust_site.git"

set :scm, "git"
set :branch, "master"

default_run_options[:pty] = true

role :web, "50.22.244.68"                          # Your HTTP server, Apache/etc
role :app, "50.22.244.68"                          # This may be the same as your `Web` server
role :db,  "50.22.244.68", :primary => true # This is where Rails migrations will run

set :deploy_to, "/var/rails/#{application}"
set :use_sudo, true

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, '1.9.2'
set :rvm_type, :system  # Don't use system-wide RVM

require 'bundler/capistrano'


namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :bundle do
  desc "Runs bundle update"
  task :update do
    run "cd #{current_path} && bundle update"
  end
end
