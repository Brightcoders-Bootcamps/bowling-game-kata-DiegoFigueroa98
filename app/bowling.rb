# frozen_string_literal: true

# Bowling Game logic
class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def score
    result = 0
    current_roll = 0

    10.times do
      result += @rolls[current_roll] + @rolls[current_roll + 1]
      result += @rolls[current_roll + 2] if spare?(current_roll)
      current_roll += 2
    end

    result
  end

  def spare?(current_roll)
    @rolls[current_roll] + @rolls[current_roll + 1] == 10
  end
end
