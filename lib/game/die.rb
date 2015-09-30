class Die

  def self.roll(value = nil)
    value || rand(1..6)
  end

end
