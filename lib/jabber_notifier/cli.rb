require 'yaml'
require 'jabber_notifier/options_parser'
require 'jabber_notifier/connection'


module JabberNotifier

  class Cli

    def self.run(options)

      config     = YAML.load_file(options[:config])
      connection = Connection.new(:username =>config["username"], :password =>config["password"], :delay =>options[:delay].to_f)

      connection.notify(options[:to], options[:message])
    end
  end
end