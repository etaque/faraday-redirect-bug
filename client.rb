require 'minitest/spec'
require 'minitest/autorun'
require 'faraday_middleware'

require './app'

describe 'FaradayMiddleware FollowRedirects' do
  before do
    @connection = Faraday.new('http://localhost:4567') do |builder|
      builder.response :follow_redirects
      builder.request :url_encoded
      builder.request :multipart
      builder.adapter :net_http
    end
  end

  let(:response) { @connection.post '/foo', {:file => Faraday::UploadIO.new('file.txt', 'text/plain')} } 

  it 'should redirect' do
    response.env[:url].to_s.must_equal 'http://localhost:4567/bar'
  end
end