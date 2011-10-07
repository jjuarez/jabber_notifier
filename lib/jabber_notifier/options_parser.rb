require 'rubygems'
require 'choice'


Choice.options do

  header ''
  header ' Options:'

  option :contact, :required=>true do
    short '-c'
    long  '--contact'
  end 

  option :message, :required=>true do
    short '-m'
    long  '--message'
  end 

  separator ''
  separator ' Help:'
            
  option :help do
    short '-h'
    long  '--help'
  end
  
  separator ''
end