require './player'
require './questions'


# starts the game
puts "Start the 2-Player Math Game"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

current_player = player1

# game starts and prompts player to answer first question
loop do
  answer = generate_question
  print "#{current_player.name}, enter your answer: "
  player_answer = gets.chomp.to_i

# checks if the answer if correct or incorrect and adjusts score
  if player_answer == answer
    puts "YES! You are correct."
    current_player.score = 3
  else
    puts "Seriously?! No."
    current_player.lives -= 1
  end

# checks if the game has ended
  if game_over?(current_player)
    break
  end

# switches the players turn 
  player1, player2 = switch_players(player1, player2)
  current_player = (current_player == player1) ? player2 : player1

# displays player scores
  puts "#{player1.name} score: #{player1.lives} / #{player1.score}\n #{player2.name} score: #{player2.lives} / #{player2.score}\n"
end