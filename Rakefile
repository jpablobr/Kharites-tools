require 'rubygems'
require 'spec/rake/spectask'

require File.dirname(__FILE__) + '/lib/kharites'
begin

GEM = "Kharites-tools"
  AUTHOR = "Jose Pablo Barrantes"
  EMAIL = "xjpablobrx@gmail.com"
  SUMMARY = "Tools for the Karites"
  HOMEPAGE = "http://github.com/jpablobr/kharites-tools/tree/master"
  INSTALL_MESSAGE = %q{
  ========================================================================
  Thanks for installing Kharites-tools!
  ------------------------------------------------------------------------
  You can now (optionally) run the generator to copy some stylesheets and
  a config initializer (<article-name>.kharites) into your application:

    $ kharites generate <article-name>

  Find out more and get involved:
    http://github.com/jpablobr/kharites-tools
  ========================================================================
  }

  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "Kharites-tools"
    gemspec.executables = "kharites"
    gemspec.summary = "Tools for the Karites."
    gemspec.description = "Tools for Karites."
    gemspec.email = "xjpablobrx@gmail.com"
    gemspec.homepage = "http://github.com/jpablobr/kharites-tools"
    gemspec.authors = ["Jose Pablo Barrantes"]
    gemspec.rubyforge_project = "kharites-tools"
    gemspec.files =  FileList["[A-Z]*", "{bin,lib,spec}/**/*"]
    gemspec.add_runtime_dependency "thor", ">= 0.13.0"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler -s http://gemcutter.org"
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end
