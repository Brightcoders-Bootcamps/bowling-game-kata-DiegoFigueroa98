# frozen_string_literal: true

require_relative '../app/bowling.rb'

describe 'Bowling game logic' do
  it('Can make a new game') do
    @game = Bowling.new
  end
end
