require_relative 'deck'

class WAR

  attr_accessor :game, :player_card, :computer_card,

  initialize
  self.player_card = 52.times.collect
  self.computer_card = 52.times.collect



  def play
    say_lets_play_war
    player
    computer
    rematch?

    puts "Lets play War"
  end
end
