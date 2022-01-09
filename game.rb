class Game
  attr_accessor :current_player

  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")
    ]
    @current_player = @players[0]
  end

  def play
    while @players[0].score_count > 0 && @players[1].score_count > 0 do

      q = Question.new

      puts "#{@current_player.name} #{q}"
      player_response = gets.chomp.to_i
      result = q.check_answer(player_response)
      check_answer(result)
    end
    loser_town
    puts "----- NEW TURN -----"
    puts "Good bye!"
  end

  def check_answer(res)
    if res == false
      @current_player.score_count -= 1
      puts "That's a lost life, pal"
    else
      puts "Congrats at not sucking"
    end
    puts "P1: #{@players[0].score_count}/3 vs P2: #{@players[1].score_count}/3"
    player_switch
    unless @players[0].score_count == 0 || @players[1].score_count == 0
      puts "----- NEW TURN -----"
    end
  end

  def player_switch
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

  def loser_town
    puts "#{@current_player.name} wins with a score of #{@current_player.score_count}/3"
  end

end