module JabberNotifier
  
  class Cli
    
    def self.run(options)
      
      Connection.new().notify(options[:contact], options[:message]).disconnect() 
    end
  end
end