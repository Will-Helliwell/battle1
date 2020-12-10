require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  # set :sessions, true
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:play)
  end

  get '/attacked' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:attack)
  end
end
