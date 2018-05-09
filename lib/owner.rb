class Owner
  @@all = []
  attr_reader :species
  def initialize(species)
    @species = species
  end

  def say_species
    puts "I am a #{@species}"
  end
  # code goes here
end
