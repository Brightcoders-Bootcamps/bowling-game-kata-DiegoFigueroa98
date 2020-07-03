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
    rolls_number.times { @rolls.push(pins) }
  end

  def score(result = 0, current_roll = 0)
    10.times do
      result += sum_pins_in_frame(current_roll)
      result += @rolls[current_roll + 2] if spare?(current_roll) || strike?(current_roll)
      current_roll -= 1 if strike?(current_roll)
      current_roll += 2
    end
    result
  end

  def sum_pins_in_frame(current_roll)
    @rolls[current_roll] + @rolls[current_roll + 1]
  end

  def spare?(current_roll)
    @rolls[current_roll] + @rolls[current_roll + 1] == 10
  end

  def strike?(current_roll)
    @rolls[current_roll] == 10
  end
end
