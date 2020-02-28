require 'pry'

class Toy
  # attr_writer(:name, :cost) 
  # attr_writer :brand, :size, :color, :name, :cost
  # attr_reader :brand, :size, :color, :name, :cost

  attr_accessor :brand, :size, :color, :cost
  @@all = []

  def initialize(title, price, hue, maker)
    @name = title
    @cost = price
    @color = hue
    @brand = maker

    # binding.pry

    puts self # refers to Toy obj/instance

    @@all << self
  end

  def self.whats_self
    puts self # refers to Toy class
  end

  def self.all # class reader (class method)
    puts self # refers to Toy class
    @@all
  end

  #getter / reader method ~> instance method
  def name
    puts self # refers to Toy obj/instance
    @name
  end

  # setter / writer method
  # set an objs attributes 
  def name=(title) # instance method 
    puts self # refers to Toy obj/instance

    @name = title
  end
end

lego_blocks = Toy.new('blocks', 30, 'multi-color', 'lego')
# football = Toy.new('football', 50, 'brown & white', 'Nike')
# minnion = Toy.new('minion figure', 14, 'yellow', 'Pic')
# doll = Toy.new('LoL Doll', 7, 'orange', 'LoL Doll')

# ball.name = 'football'
# ball.cost = 40
# ball.color = 'brown & white'
# ball.brand = 'Nike'
# ball.size = 'standard'

binding.pry
