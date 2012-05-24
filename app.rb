require 'sinatra'

post '/foo' do
  redirect to('/bar'), 302
end

get '/bar' do
  "It works!"
end