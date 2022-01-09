class Player
  attr_reader :name
  attr_accessor :score_count
  def initialize(name)
    @name = name
    @score_count = 3
  end
end