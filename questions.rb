class Questions
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
        
  end

  # def question
  #   puts '#{question}'
  # end

  def to_s
    "#{question}"
  end

  def correct_answer(question)
    question.answer
  end

end



