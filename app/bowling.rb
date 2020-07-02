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
    @rolls.each { |x| result += x }
    result
  end
end
