class Owner

  @@all = []

  attr_reader :name, :species

  attr_accessor :pets

  def initialize(name)
    @name = name
    @species = 'human'
    @pets = []
    
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    @pets.select do |i|
      i.class == Cat
    end
  end

  def dogs
    @pets.select do |i|
      i.class == Dog
    end
  end

  def buy_cat(name)
    Cat.new(name, self)

  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    @pets.each do |i|
      i.mood = 'happy' if i.class == Dog
    end

  end

  def feed_cats
    @pets.each do |i|
      i.mood = 'happy' if i.class == Cat
    end
  end

  def sell_pets
    @pets.each do |i|
      i.mood = 'nervous'
      i.owner = nil
    end
    @pets.clear
  end

  def list_pets
    "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end

end