# frozen_string_literal: true

# Bowling Game logic
class Bowling
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def roll_many_same_score(rolls_number, pins)
    rolls_number.times do
      roll(pins)
    end
  end

  def score(result = 0, current_roll = 0)
    10.times do
      result += @rolls[current_roll] + @rolls[current_roll + 1]
      if spare?(current_roll)
        result += @rolls[current_roll + 2]
      elsif strike?(current_roll)
        result += @rolls[current_roll + 2]
        current_roll -= 1
      end
      current_roll += 2
    end
    result
  end

  def spare?(current_roll)
    @rolls[current_roll] + @rolls[current_roll + 1] == 10
  end

  def strike?(current_roll)
    @rolls[current_roll] == 10
  end
end
