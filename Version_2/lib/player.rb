class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damages(damages)
    if damages.respond_to?(:to_i)
      @life_points -= damages
      if @life_points <= 0
        puts "Le joueur #{@name} a été tué"
        exit
      end
    end
  end

  def attacks(victim)
    puts "Le joueur #{@name} attaque le joueur #{victim.name}"
    damages = compute_damages
    victim.gets_damages(damages)
    puts "#{@name} vient d'infliger #{damages} points de dégats"
  end

  def compute_damages
    return rand(1..6)
  end
  
end

class HumanPlayer < Player

  attr_accessor :weapon_level
  
    def initialize(name)
      @life_points = 100
      @weapon_level = 1
    end
  
    def show_state
      puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end
  
    def compute_damage
      rand(1..6) * @weapon_level
    end
  
    def search_weapon
      dice = rand(1..6)
      puts "Vous venez de trouver une arme de niveau #{dice} !"
      if dice > @weapon_level 
        (puts "Cette arme est meilleure que votre équipement actuel, gardez-la et terrasez vos ennemis") 
        return @weapon_level = dice 
      else  
        (puts "Votre équipement actuel est #{@weapon_level - dice} niveau(x) au dessus, jetez-moi ça!")
      end
    end

    def search_health_pack
      dice = rand(1..6)
      case dice
        when 2..5
          puts "Bravo, tu as trouvé un pack de +50 points de vie !"
          if 100 - @life_points >= 50
            @life_points = 100
          else
            @life_points += 50
          end
        when 6
          puts "Waow, tu as trouvé un pack de +80 points de vie !"
          if 100 - @life_points >= 20
            @life_points = 100
          else
            @life_points += 80
          end
        else
          puts "Tu n'as rien trouvé..." 
      end
    end
  
  
  end