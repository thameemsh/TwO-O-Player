class Question

  def initialize
    @num_1 = rand(0..10)
    @num_2 = rand(0..10)
    @answer = @num_1 + @num_2
  end

  def to_s
    "What does #{num_1} plus #{num_2} equal?"
  end

  def check_answer(playeranswer)
    @answer == playeranswer
  end
end