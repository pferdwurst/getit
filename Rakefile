require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'spec/*_spec.rb'
end



desc "Create necessary directories"
task :initial_setup do
   mkdir 'downloads'
   chmod 0755, 'downloads'


end

desc "Verify the environment/setup"
task :check do
    Rake::Task["initial_setup"].invoke
end




desc "Run the application"
task :run => :check do
    print "Hello"
end