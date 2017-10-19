require 'mina/git'
require 'mina/unicorn'
require 'mina/rails'
require 'mina/bundler'
require 'mina/nginx'
# require 'mina/rbenv'  # for rbenv support. (https://rbenv.org)
# require 'mina/rvm'    # for rvm support. (https://rvm.io)

# Basic settings:
#   domain       - The hostname to SSH to.
#   deploy_to    - Path to deploy into.
#   repository   - Git repo to clone from. (needed by mina/git)
#   branch       - Branch name to deploy. (needed by mina/git)

set :application, 'SimpleUploader'
set :user, 'rails'
set :domain, '104.236.41.117'
set :deploy_to, '/home/rails/hannahperson'
set :repository, 'https://github.com/StephenPerson/SimpleUploader.git'
set :branch, 'master'
set :bundle_bin, '/usr/local/rvm/gems/ruby-2.4.2/wrappers/bundle'
set :rvm_use_path, '/usr/local/rvm/wrappers/rvm'
set :git_bin, '/usr/wrappers/git'
# Optional settings:
#   set :user, 'foobar'          # Username in the server to SSH to.
set :port, '22'           # SSH port number.
#   set :forward_agent, true     # SSH forward_agent.

# Shared dirs and files will be symlinked into the app-folder by the 'deploy:link_shared_paths' step.
# Some plugins already add folders to shared_dirs like `mina/rails` add `public/assets`, `vendor/bundle` and many more
# run `mina -d` to see all folders and files already included in `shared_dirs` and `shared_files`
# set :shared_dirs, fetch(:shared_dirs, []).push('public/assets')
# set :shared_files, fetch(:shared_files, []).push('config/database.yml', 'config/secrets.yml')

# This task is the environment that is loaded for all remote run commands, such as
# `mina deploy` or `mina rake`.
task :local_environment do 

end

task :remote_environment do

end

# Put any custom commands you need to run at setup
# All paths in `shared_dirs` and `shared_paths` will be created on their own.
task :setup do

end

desc "Deploys the current version to the server."
task :deploy do
  # uncomment this line to make sure you pushed your local branch to the remote origin
  invoke :'git:ensure_pushed'
  comment "export ..."
  deploy do
    # Put things that will set up an empty directory into a fully set-up
    # instance of your project.
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'
    invoke :'deploy:cleanup'

  end

end

# For help in making your deploy script, see the Mina documentation:
#
#  - https://github.com/mina-deploy/mina/tree/master/docs
