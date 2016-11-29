require 'rubygems'
require 'rest_client'

require 'base64'
$auth = 'Basic ' + Base64.encode64('admin:taliesin').chomp


$url = "http://localhost:3000/api/users"

resource = RestClient::Resource.new($url)
response = resource.get(:Authorization => $auth)

puts response.body
