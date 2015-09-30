class BeingLucky

  attr_reader :roll

  def initialize(dice)
    @roll = Roll.new(dice)
  end

  def score
    Calculator.new(roll.result).calc
  end

end
