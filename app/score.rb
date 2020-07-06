# frozen_string_literal: true

# Bowling Game logic
class Score
  def initialize(rolls_array)
    @result = 0
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
    @result += @rolls[@current_roll] + @rolls[@current_roll + 1]
    @result += @rolls[@current_roll + 2] if spare? || strike?
    @current_roll -= 1 if strike?
    @current_roll += 2
  end

  def final_score
    10.times do
      frame_score
    end
    @result
  end
end
