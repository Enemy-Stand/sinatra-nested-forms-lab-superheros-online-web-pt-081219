require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post "/teams" do
    # binding.pry
    @team_name = params[:team][:name]
    @team_motto = params[:team][:motto]
    @super_heroes = params[:team][:members]
    # members.collect do |member_params|
      # SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
    erb :team
  end
end
