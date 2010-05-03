require File.dirname(__FILE__) + "/spec_helper"

describe "Kharites::Generate" do
  before do
    generate_kharites
    @tmp_dir = File.dirname(__FILE__) + '/sandbox/tmp'
    kharites = Kharites::Base.new(@tmp_dir)
    kharites.run('generate')
  end
  
  it "should set up project directory in given path" do
    %w(
    public/images
    public/javascripts
    public/stylesheets
    views/layout.haml
    views/index.haml
    views/application.sass
    ).each {|path| File.exists?(File.join(@tmp_dir, path)).should(be_true, "#{path} expected to exist in #{@tmp_dir}") }
  end
end
