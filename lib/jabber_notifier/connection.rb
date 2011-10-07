require 'rubygems'
require 'xmpp4r-simple'


module JabberNotifier

  class Connection
  
    def initialize(username, password)
    
      @connection = Jabber::Simple.new(username, password)
      self
    end  
  
    def notify(to, message, options={})

      options = { :sleep_time=>1 }.merge(options)
      
      @connection.deliver(to, message)
      sleep(options[:sleep_time]) if options[:sleep_time] > 0
      self
    end    
    
    def disconnect
      
      @connection.disconnect
      self
    end
  end
end