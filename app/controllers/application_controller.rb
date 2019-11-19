require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/teams'
    erb :super_hero
  end
end
