class Bowling
  def initialize
    @rolls = Array.new
  end

  def roll pins
    @rolls.push(pins)
  end

  def score
    result = 0
    @rolls.each {|x| result += x}
    return result
  end
end