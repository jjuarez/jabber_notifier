require 'rubygems'
require 'yaml'
require 'xmpp4r-simple'


module JabberNotifier
  
  class Connection
    
    DEFAULT_DELAY = 2.0
    
    def self.configure(config_file)      
      Connection.new(YAML.load_file(config_file))
    end
      
    def initialize(config)
      
      @connection = Jabber::Simple.new(config[:username], config[:password])
      @delay      = config[:delay]
      
      self
    end
    
    def notify(to, msg)

      raise "Not connecteted" unless @connection.connected?
      
      @connection.deliver(to, msg)
      sleep(@delay)
    end    
    
    def close      
      @connection.disconnect if @connection.connected?
    end 
  end
end