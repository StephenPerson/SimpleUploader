# set path to application
app_dir git File.expand_path("../..", __FILE__)
working_directory app_dir

# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "#{shared_dir}/sockets/unicorn.sock", :backlog => 64
# Logging
stderr_path "#{app_dir}/shared/log/unicorn.stderr.log"
stdout_path "#{app_dir}/shared/log/unicorn.stdout.log"

# Set master PID location
pid "#{app_dir}/shared/pids/unicorn.pid"