require 'socket'
require 'yaml'
require_relative 'car'

server = TCPServer.new(5178)
cars   = [ ]

while (connection = server.accept)
  expected_length = connection.gets.strip.to_i
  cars << YAML::load(connection.read(expected_length))
  connection.puts "Current Cars:"
  connection.puts cars
  connection.close
end
