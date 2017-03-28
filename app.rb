require 'sinatra/base'

class RapBattle < Sinatra::Base

  get '/' do
    "Hello G"
  end

  run! if app_file == $0

end
