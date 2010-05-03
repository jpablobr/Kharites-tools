module Kharites
  class Base
    
    include Kharites::SetupMixin  
    attr_reader :current_page, :src_dir, :site_dir

    def current_file
      @current_file_stack[0] || ""
    end
    
    def initialize(base_dir)
      @current_page = nil
      @current_file_stack = []
      @base_dir = base_dir
      @src_dir = File.join(@base_dir, "views")
      @site_dir = File.join(@base_dir, "public")            
      @scope = Object.new
      @scope.instance_variable_set("@kharites", self)
    end
    
    def base_dir
      @base_dir
    end
  
    def run(command)
      puts "Article root is: #{@base_dir}"
      
      if %w(sync generate server console).include?(command)
        send(command)
      else
        puts "#{command} is not a valid Kharites command"
      end
    end
    
  end
end
