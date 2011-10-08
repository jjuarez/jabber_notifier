require 'rubygems'
require 'yaml'
require 'xmpp4r-simple'


module JabberNotifier
  
  class Connection
    
    def self.configure(config_file)      
      Connection.new(YAML.load_file(config_file))
    end
      
    def initialize(config)
      
      @connection = Jabber::Simple.new(config[:username], config[:password])
      self
    end
    
    def notify(to, msg, delay=1.0)

      raise "Not connecteted" unless @connection.connected?
      
      @connection.deliver(to, msg, :groupchat)
      sleep(delay)
    end    
    
    def close      
      @connection.disconnect if @connection.connected?
    end 
  end
end