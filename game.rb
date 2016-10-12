require_relative 'card.rb'

class WAR

  attr_accessor :game

  

  def play
    say_hello
    rematch?
  end
