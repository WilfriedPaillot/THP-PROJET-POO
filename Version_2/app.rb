require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


puts "╔════════════════════════════════════════════════════════════════════════════════════════════╗"
puts "║                                                                                            ║"
puts "║                            BIENVENUE SUR  ILS VEULENT MA PÔÔ !                             ║"  
puts "║                                                                                            ║"
puts "║                             Un seul objectif: Rester vivant...                             ║"
puts "║                                                                                            ║"
puts "║                                                                                            ║"
puts "║                                                                                            ║"
puts "║ Par Wilfried PAILLOT                                                 The Hacking Project © ║"
puts "╚════════════════════════════════════════════════════════════════════════════════════════════╝"


sleep(3)
print "\e[2J\e[f"

puts "Merci d'entrer votre prénom :"
print "> "
input = gets.chomp
human = HumanPlayer.new(input)

player1 = Player.new("Joé") 
player2 = Player.new("José")

while human.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
  puts ""
  human.show_state
  puts ""
  player1.show_state
  player2.show_state


  puts ""
  puts "Quelle action veux-tu effectuer ?"
  puts "================================="
  puts "a - Chercher une meilleure arme"
  puts "s - Chercher à se soigner"
  puts ""
  puts "Attaquer un joueur en vue: "
  puts "==========================="
  puts "0 - #{player1.name} a #{player1.life_points} points de vie"
  puts "1 - #{player2.name} a #{player2.life_points} points de vie"
  puts ""
  print "Choix > "

  choice = gets.chomp
  case choice
    when "a"
      human.search_weapon
    when "s"
      human.search_health_pack
    when "0"
      human.attacks(player1)
    when "1"
      human.attacks(player2)
    else
      exit
  end

  puts ""
  puts "Les autres joueurs t'attaquent"
  puts ""

  Player.all.each do |i|
    if i.life_points > 0
       i.attacks(human)
    end
  end

end

binding.pry