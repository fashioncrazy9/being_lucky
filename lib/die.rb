class Die
  def roll(val = nil)
    val || rand(values)
  end

  private

  attr_reader :values

  def initialize
    @values = 1..6
  end
end
