require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josianne")
player2 = Player.new("José")

while player1.life_points > 0 && player2.life_points > 0 do
  sleep(1)

  puts "Voici l'état de chaque joueurs: "
  player1.show_state
  player2.show_state
  puts ""
  sleep(1.5)

  puts "Passons à l'attaque"
  player1.attacks(player2)
  # break if player2.life_points <= 0 
  player2.life_points <= 0 
  player2.attacks(player1)
  puts ""
  puts ""

end

binding.pry