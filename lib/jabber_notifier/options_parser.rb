require 'choice'


Choice.options do

  header ''
  header ' Options:'

  option :config, :required =>true do

    short '-c'
    long  '--config'
  end 

  option :to, :required =>true do

    short '-t'
    long  '--to'
  end 

  option :message, :required =>true do

    short '-m'
    long  '--message'
  end 

  option :delay, :required =>false do

    short '-d'
    long  '--delay'
  end

  separator ''
  separator ' Help:'
          
  option :help do
    short '-h'
    long  '--help'
  end

  separator ''
end