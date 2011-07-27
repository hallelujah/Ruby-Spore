# encoding: utf-8
require 'rubygems'
gem 'rdoc', '>= 2.5.11'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "spore"
    gem.summary = %Q{A Ruby implementation for SPORE}
    gem.description = %Q{Spore is a specification for describing ReST API that can be parsed and used automatically by client implementations to communicate with the descibed API}
    gem.email = "<sukria@sukria.net>"
    gem.homepage = "http://github.com/sukria/Ruby-Spore"
    gem.authors = ["Alexis Sukrieh <sukria@sukria.net> [sukria]", "Hery Ramihajamalala <hery@rails-royce.org> [hallelujah]"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
    gem.add_dependency "json", ">= 1.4.6"
    gem.add_dependency "httpclient", "= 2.1.7.2"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.options = '--verbose'
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
    test.rcov_opts += ["--exclude /gems/"]
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "spore #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
