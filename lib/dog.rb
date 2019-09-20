class Dog

  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner, mood="nervous")
    @name = name
    @owner = owner
    @mood = mood
    @owner.dogs << self
    @@all << self
  end

  def self.all
    @@all
  end

  # def mood(mood="nervous")
  #   @mood = mood
  # end


end
