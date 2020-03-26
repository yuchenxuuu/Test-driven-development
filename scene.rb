

class Scene
	attr_accessor :shapeList

	 def initialize
    	@shapeList = []
  	 end

	def shape_count
		return @shapeList.size
	end

	def total_area
		totalArea = 0
		@shapeList.each do |shape|
			totalArea += shape.area
		end
		return totalArea
	end

	def remove_shape(toDelete)
		for i in (0..@shapeList.size - 1)
			if @shapeList[i].equal? (toDelete)
				@shapeList.delete_at(i)
			end
		end
	end

	def add_shape(toAdd)
		@shapeList.push(toAdd)
	end
end
