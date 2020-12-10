require 'sinatra/base'

class Battle < Sinatra::Base
  # set :sessions, true
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:Player1]
    session[:player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1]
    @player2_name = session[:player2]
    erb(:play)
  end

  get '/attacked' do
    @player2_name = session[:player2]
    erb(:attack)
  end
end
