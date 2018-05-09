require "pry"
class Owner
  @@all = []

  attr_reader :species, :pets
  attr_accessor :name

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #pets needs to be initialized as an attr and pets
    #isn't created in its own method
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

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def buy_cat(cat_name)
    cat = Fish.new(cat_name)
    @pets[:cat] << cat
  end


  # code goes here
end
