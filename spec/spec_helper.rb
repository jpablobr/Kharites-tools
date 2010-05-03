require 'rubygems'
require 'stringio'
require 'spec'

require File.dirname(__FILE__) + '/../lib/kharites'

TEST_SITE_PATH = File.expand_path(File.join(File.dirname(__FILE__), "sandbox", "test_article"))

Spec::Runner.configure do |config|
end

def setup_kharites
  @kharites = Kharites::Base.new(TEST_ARTICLE_PATH)
end
