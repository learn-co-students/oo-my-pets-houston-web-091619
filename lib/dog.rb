class Dog

  @@all = []
  
  attr_reader :name

  attr_accessor :owner, :mood

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    owner.pets << self

    @@all << self
  end

  def self.all
    @@all
  end

end