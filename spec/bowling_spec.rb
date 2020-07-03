# frozen_string_literal: true

require_relative '../app/bowling.rb'

describe 'Bowling game logic' do
  before do
    @game = Bowling.new
  end

  it('Can get score of all rolls with gutter balls') do
    @game.roll_many_same_score(20, 0)
    expect(@game.score).to eq(0)
  end
end
