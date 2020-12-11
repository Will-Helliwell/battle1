require 'game'
require 'player'

describe Game do
  let(:player1) { Player.new('Kenneth') }
  let(:player2) { Player.new('Kennethy') }
  let(:game) { Game.new(player1, player2) }

  describe '#attack' do
    it "reduces attacked player's points by 10" do
      expect { game.attack(player2) }.to change { player2.hit_points }.by(-10)
    end
  end

  describe '#switching turns' do
    it 'starts with player 1' do
      expect(game.current_turn.name).to eq 'Kenneth'
    end

    it 'switches player when switch_turn method is called' do
      game.switch_turns
      expect(game.current_turn.name).to eq 'Kennethy'
    end
  end
end
