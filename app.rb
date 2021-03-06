require 'sinatra/base'

class RapBattle < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_2_hp = 100
    erb(:play)
  end

  get '/' do
    erb(:index)
  end


end
