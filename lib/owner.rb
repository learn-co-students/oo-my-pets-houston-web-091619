class Owner
  
  attr_reader :name, :species
 #creating an @@all array 
  @@all = []
 #using initialize to set certain attributes at the time the "owner" is created. Also, making sure that the instance of "owner"
 #is recorded at the time that is is "born" with the """"@@all<<self""" 
  def initialize(name)
    @name=name
    @species = "human"
    @@all << self
  end
#building a method that will put "I am a (insert species)" when called...giving the human owner a "behavior"
  def say_species
    "I am a #{self.species}."
  end
#setting a class array to be able to show all elements in the @@all array when called by self.all
  def self.all
    @@all
  end
#using .count to return the number of elements in the @@all array
  def self.count
    self.all.count
  end
#using .clear to remove all elements from the @@all array
  def self.reset_all
    self.all.clear 
  end
#iterate through each cat in the @@all array and return the cats that belong to a specific owner
  def cats
    Cat.all.select{|cat| cat.owner == self}

  end
#iterate through each dog in the @@all array and return the dogs that belong to a specific owner
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end

# Owner
#   Instance methods
#     #name
#       can have a name (FAILED - 1)
#       cannot change owner's name (FAILED - 2)
#     #species
#       initializes with species set to human (FAILED - 3)
#       can't change its species (FAILED - 4)
#     #say_species
#       can say its species (FAILED - 5)
#   Class methods
#     .all returns all instances of Owner that have been created (FAILED - 6)
#     .count returns the number of owners that have been created (FAILED - 7)
#     .reset_all can reset the owners that have been created (FAILED - 8)

# Associations
#   Owner instance methods
#     #cats
#       returnsa a collection of all the cats that belong to the owner (FAILED - 21)
#     #dogs
#       returnsa a collection of all the dogs that belong to the owner (FAILED - 22)
#     #buy_cat
#       can buy a cat that is an instance of the Cat class (FAILED - 23)
#       knows about its cats (FAILED - 24)
#     #buy_dog
#       can buy a dog that is an instance of the Dog class (FAILED - 25)
#       knows about its dogs (FAILED - 26)
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy (FAILED - 27)
#     #feed_cats
#       feeds cats which makes the cats' moods happy (FAILED - 28)
#     #sell_pets
#       can sell all its pets, which makes them nervous (FAILED - 29)
#       can sell all its pets, which leaves them without an owner (FAILED - 30)
#     #list_pets
#       can list off its pets (FAILED - 31)