require 'rubygems'
require 'fileutils'

module Kharites
  VERSION = "0.1.0"
end

["sync", "generate", "server", "console"].each do |mixin|
  require File.join(File.dirname(__FILE__), "kharites", "mixins", mixin)
end

["base"].each do |lib|
  require File.join(File.dirname(__FILE__), "kharites", lib)
end
