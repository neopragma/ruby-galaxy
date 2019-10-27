require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--tag ~integration"
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty" # Any valid command line option can go here.
end

task :default => :features
