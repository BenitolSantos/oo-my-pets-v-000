class Owner
  @@all = []
  attr_reader :species
  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    print "I am a #{@species}."
  end
  # code goes here
end
