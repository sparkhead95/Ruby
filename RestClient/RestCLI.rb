require 'rubygems'
require 'rest_client'

require 'base64'
$auth = 'Basic ' + Base64.encode64('admin:taliesin').chomp


$url = "http://localhost:3000/api/users"

resource = RestClient::Resource.new($url)
response = resource.get(:Authorization => $auth)


=begin
puts "Welcome to the SE31520 CLI Web Service Client!"
puts "\n"
puts "Please select the number of your desired action:"
puts "1: Output full JSON"
input = gets.chomp
puts "\nHere is the full JSON: \n"
=end

puts response.body
