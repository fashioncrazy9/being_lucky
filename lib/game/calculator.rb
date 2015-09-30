class Calculator
  extend Forwardable

  def calc
    calc_triplets
    calc_remaining
    score.points
  end

  attr_accessor :roll

  def_delegators :roll, :each, :has_triplets?, :remove_triplet!, :triplet

  def initialize(roll)
    @roll = roll
  end

  def calc_triplets
    score.points += Score::TRIPLETS_TABLE[triplet] if has_triplets?
    remove_triplet!
  end

  def calc_remaining
    each { |single| score.points += Score::SINGLES_TABLE[single].to_i }
  end

  def score
    @score ||= Score.new
  end

  class Score
    attr_accessor :points

    SINGLES_TABLE = {1=>100, 5=>50}
    TRIPLETS_TABLE = {1=>1000, 2=>200, 3=>300, 4=>400, 5=>500, 6=>600}

    def initialize
      @points = 0
    end
  end

end
