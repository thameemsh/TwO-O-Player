class Game 
  def initialize
  @players = [
    Player.new("Player 1")
    Player.new("Player 2")
  ]
  @current_player = @players[0]
  end
  
  def player
    while @players[0].score > 0 && @players[1].score > 0 do

      q = Question.new

      puts "#{@current_player.name}: #{q}"
      player_response = gets.chomp.to_i
      result = q.check_answer(player_response)
      check_answer(result)
    end
    winner_announcement
    puts "----- NEW TURN -----"
    puts "Good bye!"

    def check_answer(res)
      if res == false
        @current_player.score -= 1
        puts "You have lost a life!"
      else
        puts "Congrats you won"
      end
    puts "P1: #{@players[0].score}/3 vs #{@players[1].score}/3"
    player_switch
    unless @player[0].score == 0 || @players[1].score == 0
      puts "----NEW GAME----"
    end
end

def player_switch
  if @current_player == @players[0]
    @current_player = @players[1]
  else
    @current_player == @players[1]
    @current_player = @players[0]
  end
end

def winner_announcement
  puts "#{@current_player.name} wins with a score of #{@current_player.score}/3"
end


