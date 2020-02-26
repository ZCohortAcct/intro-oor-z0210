require 'pry'

class Toy
  # attr_writer(:name, :cost) 
  # attr_writer :brand, :size, :color, :name, :cost
  # attr_reader :brand, :size, :color, :name, :cost

  attr_accessor :brand, :size, :color, :name, :cost

  def initialize(title, price, hue, maker)
    @name = title
    @cost = price
    @color = hue
    @brand = maker
  end

  # setter / writer method
  # set an objs attributes 
  # def name=(title) # instance method 
  #   @name = title
  # end

  #getter / reader method
  # def name
  #   @name
  # end
end

ball = Toy.new('blocks', 30, 'multi-color', 'lego')
# ball.name = 'football'
# ball.cost = 40
# ball.color = 'brown & white'
# ball.brand = 'Nike'
# ball.size = 'standard'

binding.pry
