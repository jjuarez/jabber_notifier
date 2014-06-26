# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$:.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jabber_notifier/version'

Gem::Specification.new do |spec|

  spec.name          = "jabber_notifier"
  spec.version       = JabberNotifier::VERSION
  spec.authors       = ["Javier Juarez"]
  spec.email         = ["javier.juarez@gmail.com"]
  spec.summary       = %q{CLI Jabber notifier}
  spec.description   = %q{CLI Jabber notifier designed for command line notifications}
  spec.homepage      = "http://github.com/jjuarez/jabber_notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "choice"
  spec.add_dependency "xmpp4r-simple-19"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
