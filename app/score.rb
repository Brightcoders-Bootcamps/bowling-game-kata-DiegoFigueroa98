# frozen_string_literal: true

require_relative './frame.rb'
# Class in charge of obtaining the final score of the game
class Score
  def initialize(rolls_array)
    @frames_result = Frame.new(rolls_array)
  end

  def final_score
    10.times do
      @frames_result.frame_score
    end
    @frames_result.score
  end
end
