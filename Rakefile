require "bundler/gem_tasks"

require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty --tags ~@wip"
end

# the principle of least surprise...
task :default => [:features]
task :cucumber => [:features]
task :test => [:features]
