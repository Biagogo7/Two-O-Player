# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './players'
require './questions'
require './answers'

# setting up the player data


player1 = Players.new('Player 1', 3)   # =>  # => "This object was initialized!"
player2 = Players.new('Player 2', 3)

quitx = false

while quitx != true


  # setting up the question data

  question1 = Questions.new('what does 1 plus 2 equal?', 3)   
  question2 = Questions.new('what does 2 plus 3 equal?', 5)
  question3 = Questions.new('what does 3 plus 4 equal?', 7)
  question4 = Questions.new('what does 4 plus 5 equal?', 9)
  question5 = Questions.new('what does 5 plus 6 equal?', 11)
  question6 = Questions.new('what does 10 minus 2 equal?', 8)   
  question7 = Questions.new('what does 12 minus 3 equal?', 9)
  question8 = Questions.new('what does 13 minus 6 equal?', 7)
  question9 = Questions.new('what does 14 minus 5 equal?', 9)
  question10 = Questions.new('what does 5 minus 2 equal?', 3)

  question0 = Questions.new('this is used to get user response', 0)

  questions_array = [
    question0,
    question1,
    question2,
    question3,
    question4,
    question5,
    question6,
    question7,
    question8,
    question9,
    question10
  ]


  answer1 = Answers.new(3)   
  answer2 = Answers.new(5)
  answer3 = Answers.new(7)
  answer4 = Answers.new(9)
  answer5 = Answers.new(11)
  answer6 = Answers.new(8)   
  answer7 = Answers.new(9)
  answer8 = Answers.new(7)
  answer9 = Answers.new(9)
  answer10 = Answers.new(3)
  answer0 = Answers.new(0)


  answer_array = [
  answer0,
  answer1,   
  answer2,
  answer3,
  answer4,
  answer5,
  answer6, 
  answer7,
  answer8,
  answer9,
  answer10
  ]


   # PLAYER ONE 

   puts "--------NEW TURN--------"

  # test question
  question_gen = rand(0..10)
  
  question_number = question_gen + 1
    if question_number == 11 
      question_number = 1
    end
  puts "#{player1.name}: #{questions_array[question_number]}"

  # user response
  print "> "
  user_answer = answer0.user_answer

  # correct answer
  correct_answer = "#{answer_array[question_number]}"
  
  # testing for correct answer

  if user_answer.to_i != correct_answer.to_i
    puts "#{player1.name}: Seriously? No!"
  
    puts "P1:#{player1.point - 1}/3 vs P2:#{player2.point}/3"

    player1.point = player1.point - 1 
  else  
    puts "#{player1.name}: YES! You are correct."
    puts "P1:#{player1.point}/3 vs P2:#{player2.point}/3"
  end

  # PLAYER TWO
 puts "--------NEW TURN--------"

  # test question
  question_gen = rand(0..10)
  
  question_number = question_gen + 1
   if question_number == 11 
    question_number = 1
   end
  puts "#{player2.name}: #{questions_array[question_number]}"

   # user response
   print "> "
   user_answer = answer0.user_answer

  # correct answer
  correct_answer = "#{answer_array[question_number]}"
  
  # testing for correct answer

  if user_answer.to_i != correct_answer.to_i
   puts "#{player2.name}: Seriously? No!"
  
   puts "P1:#{player1.point}/3 vs P2:#{player2.point - 1}/3"

   player2.point = player2.point - 1  
  else 
  puts "#{player2.name}: YES! You are correct."
  puts "P1:#{player1.point}/3 vs P2:#{player2.point}/3"
  end
 

  player1_score = player1.point
  player2_score = player2.point

  if player1_score == 0 || player2_score == 0 
    quitx = true   
  end
 
end

puts "-----------GAME OVER-----------"
puts "Good bye!"