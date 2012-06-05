require 'faraday'
require 'faraday_middleware'

connection = Faraday.new('http://localhost:4567') do |builder|
  builder.response :follow_redirects

  builder.request :url_encoded
  builder.request :multipart

  builder.adapter :net_http
end

response = connection.post '/foo', {:file => Faraday::UploadIO.new('file.txt', 'text/plain')}
puts response.body
