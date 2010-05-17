module Kharites::SetupMixin
  
  def generate
    Dir.mkdir(@base_dir) unless File.exists?(@base_dir)

    Dir[File.join(File.dirname(__FILE__), "..", "templates", "article", "*")].each do |template|
      begin
        FileUtils.cp_r(template, @base_dir)
      rescue Errno::EEXIST
      end
    end

    FileUtils.cd(@base_dir) {|dir| FileUtils.mv("article.yml", "#{dir}.yml") unless "#{dir}.yml" == "article.yml"}

    puts "Done"
  end
end
