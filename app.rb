require 'sinatra/base'

class RedirectApp < Sinatra::Base
  post '/foo' do
    redirect to('/bar'), 302
  end

  get '/bar' do
    "It works!"
  end

  run! if app_file == $0
end