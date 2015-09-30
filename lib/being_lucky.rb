class BeingLucky

  attr_reader :roll

  def initialize(dice)
    @roll = Roll.new(dice)
  end

  def result
    roll.result
  end

  def score
    Calculator.new(result).calc
  end

end
