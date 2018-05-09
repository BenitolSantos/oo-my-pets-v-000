class Owner
  attr_reader :species
  def initialize(species)
    @species = species
  end

  def say_species
    @species
  end
  # code goes here
end
