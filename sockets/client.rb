require "socket"
require 'yaml'
require_relative 'car'

unless ARGV.size == 2
  abort "Error - Two arguments required: Make Model"
end

a = Car.new(ARGV[0],ARGV[1])

client = TCPSocket.new("127.0.0.1", 5178)
car = a.to_yaml
client.puts car.length
client.write car
puts client.gets 
client.close
