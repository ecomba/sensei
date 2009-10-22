$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'sensei/iteration_list'
require 'sensei/git_tag_lister'
require 'sensei/repository'
require 'sensei/dojo'

def get_name
  print "Enter your name: "
  STDIN.gets
end

def run_dojo(git)
  Dojo.new(get_name, git).run
end