class Question
  attr_reader :answer

  def generate_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)

    "What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    @num1 + @num2
  end
end
