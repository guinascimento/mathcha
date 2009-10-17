require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name        = 'mathcha'
    gemspec.summary     = "Quick little arithmetic plain-text captcha"
    gemspec.description = "Quick little arithmetic plain-text captcha"
    gemspec.email       = "coryjwilkerson@gmail.com"
    gemspec.homepage    = "http://github.com/corywilkerson/mathcha"
    gemspec.authors     = ["Cory Wilkerson"]
    
    gemspec.add_dependency('Linguistics', '>= 1.0.5')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end


desc 'Default: run unit tests.'
task :default => :test

desc 'Test the mathcha plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the mathcha plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Mathcha'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
