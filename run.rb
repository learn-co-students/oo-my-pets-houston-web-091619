require "pry"

require_relative 'lib/owner.rb'
require_relative 'lib/cat.rb'
require_relative 'lib/dog.rb'

owner = Owner.new('Owner')
cat = Cat.new('Bitch Garfield')
dog = Dog.new('Dogmeat')

owner.buy_cat(cat)
p owner

binding.pry
0