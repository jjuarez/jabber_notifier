# encoding: utf-8


require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end


require 'rake'
require 'jeweler'
Jeweler::Tasks.new do |gem|

  gem.name        = "jabber_notifier"
  gem.homepage    = "http://github.com/jjuarez/jabber_notifier"
  gem.license     = "MIT"
  gem.summary     = %Q{Cli Jabber notifier}
  gem.description = %Q{Cli Jabber notifier designed for Nagios notifications}
  gem.email       = "javier.juarez@gmail.com"
  gem.authors     = ["javier.juarez"]
end
Jeweler::RubygemsDotOrgTasks.new


require 'rake/testtask'
Rake::TestTask.new(:test) do |test|

  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end


require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|

  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = "jabber_notifier #{version}"

  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end


task :default => :test
