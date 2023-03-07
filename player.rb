# defines player 1 and player 2 who are playing the math game
class Player
  attr_accessor :name, :score, :lives

  def initialize (name)
    @name = name
    @score = 3
    @lives = 3
  end
end 


# switches players after each turn
def switch_players (player1, player2)
  switch = player1
  player1 = player2
  player2 = switch
  return player1, player2
end

# checks players score to see if game is over
def game_over?(player)
  if player.lives == 0
    puts "#{player.name} is out of lives! Game over!"
    return true
  else
    return false
  end
end
