# frozen_string_literal: true

# Class in charge of obtaining the score of each frame
class Frame
  attr_reader :score
  def initialize(rolls_array)
    @score = 0
    @current_roll = 0
    @rolls = rolls_array
  end

  def spare?
    @rolls[@current_roll] + @rolls[@current_roll + 1] == 10
  end

  def strike?
    @rolls[@current_roll] == 10
  end

  def frame_score
    @score += @rolls[@current_roll] + @rolls[@current_roll + 1]
    @score += @rolls[@current_roll + 2] if spare? || strike?
    @current_roll -= 1 if strike?
    @current_roll += 2
  end
end
