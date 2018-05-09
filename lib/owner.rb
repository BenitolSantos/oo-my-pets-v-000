class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name
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
    "I am a #{@species}." #expecting string without print or puts
  end


  # code goes here
end
