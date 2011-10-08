require 'rubygems'
require 'choice'


Choice.options do

  header ''
  header ' Options:'

  option :config, :required=>true do
    short '-c'
    long  '--config'
  end 

  option :to,     :required=>true do
    short '-t'
    long  '--to'
  end 

  option :msg,    :required=>true do
    short '-m'
    long  '--msg'
  end 

  separator ''
  separator ' Help:'
          
  option :help do
    short '-h'
    long  '--help'
  end

  separator ''
end