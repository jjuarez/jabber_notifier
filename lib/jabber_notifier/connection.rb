require 'rubygems'
require 'xmpp4r-simple'


module JabberNotifier

  class Connection
  
    def initialize(options={})
    
      options = { 
        :domain     =>"jabber.cti.csic.es", 
        :username   =>"nagios@jabber.cti.csic.es", 
        :password   =>"nagios606"
      }.merge(options)

      @username   = options[:username]
      @password   = options[:password]
      @sleep_time = options[:sleep_time]
      @connection = ::Jabber::Simple.new(@username, @password)
      
      self
    end  
  
    def notify(to, message, options={})

      options = { :sleep_time=>1 }.merge(options)
      
      @connection.deliver(to, message)
      sleep(options[:sleep_time])
      
      self
    end    
    
    def disconnect
      @connection.disconnect() if @connection
    end
  end
end