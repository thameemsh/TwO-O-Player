class Question
  attr_reader :num_1, :num_2, :answer

  def initialize
    @num_1 = rand(0...10)
    @num_2 = rand(0...10)
    @answer = @num_1 + @num_2
  end

  def to_s
    "What is the total of #{@num_1} and #{@num_2}"
  end

  def check_answer(useranswer)
    @answer == useranswer
  end

end