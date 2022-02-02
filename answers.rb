class Answers
  attr_accessor :answer

  def initialize(answer)
    
    @answer = answer
        
  end

  # def question
  #   puts '#{question}'
  # end

  def to_s
    "#{answer}"
  end

  def user_answer
    $stdin.gets.chomp.to_i
  end

  def correct_answer(question)
    question.answer
  end

end




