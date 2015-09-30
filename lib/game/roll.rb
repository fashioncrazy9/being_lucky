class Roll

  def initialize(dice = 5)
    dice.times { roll_dice }
  end

  def roll_dice
    result << Die.roll
  end

  def result
    @result ||= Result.new
  end

  class Result < Array
    def triplet
      @triplet ||= detect { |i| self.count(i) >= 3 }
    end

    def has_triplets?
      triplet != nil
    end

    def remove_triplet!
      3.times { delete_at index(triplet) } if has_triplets?
    end
  end
end
