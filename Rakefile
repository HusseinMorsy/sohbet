#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
unless File.exist?(db_yml = File.expand_path('../config/database.yml', __FILE__))
  require 'fileutils'
  db_name = "sqlite"
  FileUtils.cp "#{db_yml}.#{db_name}", db_yml
  puts "Copied #{db_yml}.#{db_name} to #{db_yml}"
end

require File.expand_path('../config/application', __FILE__)

Sohbet::Application.load_tasks

task :test do
  Rake::Task['cucumber'].invoke
  Rake::Task['spec'].invoke
end
