require "bigdecimal/math"
class Circle
	attr_accessor :p1, :radius
	def initialize (p1, radius)
    	@p1 = p1
    	@radius = radius
    end

    def area
    	return Math::PI * radius ** 2
    end
end