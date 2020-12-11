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
    @player1 = $new_game.player1
    @player2 = $new_game.player2
    $new_game.attack($new_game.opponent)
    $new_game.switch_turns
    erb(:attack)
  end

end
