require "bigdecimal/math"
class Rectangle 
	attr_accessor :p1, :p2
	def initialize (p1, p2)
    	@p1 = p1
    	@p2 = p2
    end

    def area

    	length = (p1.x - p2.x).abs
    	width = (p1.y - p2.y).abs
    	return length*width.to_f
    end
end

