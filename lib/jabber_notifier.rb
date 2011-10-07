$:.unshift File.join(File.dirname(__FILE__))

begin 
  require 'jabber_notifier/options_parser'
  require 'jabber_notifier/connection'
  require 'jabber_notifier/cli'
  
rescue LoadError=>e
  $stderr.puts(e.message)
  exit 1
end