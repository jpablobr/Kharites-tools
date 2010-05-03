require 'rubygems'
require 'spec/rake/spectask'

require File.dirname(__FILE__) + '/lib/kharites'
begin
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
