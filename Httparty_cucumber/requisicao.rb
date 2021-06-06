require 'httparty'
response = HTTParty.post('https://60bbcdbd3a39900017b2dee5.mockapi.io/api/teste/cadastros',
     :body=>{"name":"Juliana","city":"São Sebastião"})
puts "response code: #{response.code}"
puts "response message: #{response.message}"
puts "response headers: #{response.headers}"
puts "response body: #{response.body}"