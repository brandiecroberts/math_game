# Generates a random math question between 1-20
  def generate_question
    question1 = rand(1...20)
    question2 = rand(1...20)
    puts "What is #{question1} + #{question2}?"
    return question1 + question2
  end

