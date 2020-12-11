require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  # set :sessions, true
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $new_game = Game.new(Player.new(params[:Player1]), Player.new(params[:Player2]))
    redirect '/play'
  end

  get '/play' do
    @player1_name = $new_game.player1.name
    @player2_name = $new_game.player2.name
    erb(:play)
  end

  get '/attack' do
    @player1_name = $new_game.player1.name
    @player2_name = $new_game.player2.name
    $new_game.attack($new_game.player2)
    @player2_points = $new_game.player2.hit_points
    # redirect '/play'
    erb(:attack)
  end

  # get 'player1turn' do
  #   erb(:play)
  # end
end
