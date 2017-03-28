require 'sinatra/base'

class RapBattle < Sinatra::Base

  run! if app_file == $0

  post '/names' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb(:play)
  end

  get '/' do
    erb(:index)
  end


end
