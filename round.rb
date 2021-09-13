require './question'

class Round
  attr_reader :player
  def initialize(player)
    @player = player
    answer = ask_question?
    determine_win(answer)
  end

  def ask_question?
    question = Question.new
    puts "#{self.player.name}: #{question.generate_question}"
    print "> "
    player_answer = gets.chomp.to_i
    
    if player_answer == question.answer
      return true
    end

    return false
  end

  def determine_win(answer)
    player.player_lose unless answer
  end
end