require "bigdecimal/math"
class Triangle
	attr_accessor :p1, :p2, :p3
	def initialize (p1, p2, p3)
    	@p1 = p1
    	@p2 = p2
    	@p3 = p3
    end

    def area
    	area = (p1.x*(p2.y - p3.y) + p2.x*(p3.y - p1.y) + p3.x*(p1.y - p2.y))/2.0
    	return area.abs
    end
end