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

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(fish_name)
    binding.pry
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end


  # code goes here
end
