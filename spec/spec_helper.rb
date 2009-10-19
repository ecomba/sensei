$:.unshift(File.dirname(__FILE__)+"/../lib")
Dir.glob(File.join(File.dirname(__FILE__), '../lib/*.rb')).each {|f| require f }