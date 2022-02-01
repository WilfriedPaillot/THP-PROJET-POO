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
    #if damages.respond_to?(:to_i)
      @life_points -= damages
      if @life_points <= 0
        puts "Le joueur #{@name} a été tué"
      end
    #end
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