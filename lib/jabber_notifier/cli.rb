module JabberNotifier
  
  class Cli
    
    def initialize(config_file)
      
      @config ||= YAML.load_file(config_file)
      self
    end
    
    def notify(options)   
      Connection.new(@config[:username], @config[:password]).notify(options[:contact], options[:message]).disconnect() 
    end
  end
end