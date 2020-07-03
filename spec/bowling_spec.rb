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

  it('Can get score of all rolls one pin down') do
    @game.roll_many_same_score(20, 1)
    expect(@game.score).to eq(20)
  end

  it('Can get score of a game with a spare') do
    @game.roll_many_same_score(2, 5)
    @game.roll(1)
    @game.roll_many_same_score(17, 0)
    expect(@game.score).to eq(12)
  end
end
