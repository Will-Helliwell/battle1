require './lib/player.rb'

class Game
  attr_reader :player1, :player2, :current_turn, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
    @opponent = @player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @opponent = @current_turn
    @current_turn = opponent_of(@current_turn)
  end

  def lose
    return true if @opponent.hit_points <= 0
    false
  end

  private

  def opponent_of(player)
    if player == @player1
      @player2
    elsif player == @player2
      @player1
    end
  end
end
