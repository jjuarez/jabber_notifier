require 'rubygems'
require 'yaml'


module JabberNotifier
  
  class Cli
    
    def initialize(config_file)
      
      config      ||= YAML.load_file(config_file)
      @connection ||= Connection.new(config[:username], config[:password])
      self
    end
    
    def notify(options)
      @connection.notify(options[:to], options[:msg]).disconnect
    end
  end
end