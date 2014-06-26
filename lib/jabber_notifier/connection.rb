require 'yaml'
require 'xmpp4r-simple'


module JabberNotifier
  
  class Connection
    
    DEFAULT_DELAY = 2.0
    
    def initialize(options)

      options = { :delay =>DEFAULT_DELAY }.merge(options)
      
      @connection = Jabber::Simple.new(options[:username], options[:password])
      @delay      = options[:delay]
      
      self
    end
    
    def notify(to, message)

      raise "Not connecteted" unless @connection.connected?
      
      @connection.deliver(to, message)
      sleep(@delay)
    end    
    
    def close

      @connection.disconnect if @connection.connected?
    end 
  end
end