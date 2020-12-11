require 'game'
require 'player'

describe Game do
  let(:player1) { Player.new("Kenneth") }
  let(:player2) { Player.new("Kennethy") }
  let(:game) { Game.new(player1, player2) }

  describe "#attack" do
    it "reduces attacked player's points by 10" do
      expect{game.attack(player2)}.to change{player2.hit_points}.by(-10)
    end
  end

end
