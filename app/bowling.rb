# frozen_string_literal: true

require_relative './score.rb'
# Bowling Game logic
class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def roll_many_same_score(rolls_number, pins)
    rolls_number.times { @rolls.push(pins) }
  end

  def score
    Score.new(@rolls).final_score
  end
end
