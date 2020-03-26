
require 'minitest/autorun'
require "minitest/spec"
require_relative './point'
require_relative './circle'
require_relative './triangle'
require_relative './rectangle'
require_relative './scene'

p1 = Point.new(1,1)
p2 = Point.new(2,2)
p3 = Point.new(1,2)
p4 = Point.new(2,1)
p5 = Point.new(3,3)
radius = 2
rectangle = Rectangle.new(p1,p2)
triangle = Triangle.new(p1,p2,p3)
circle = Circle.new(p1,radius)
scene =  Scene.new

#test for rectangle
describe Rectangle do 
	
	rectangle = Rectangle.new(p1,p2)

	it "get area" do
    	area = rectangle.area
    	area.must_equal 1.0
  	end
end
#test for triangle
describe Triangle do 
	it "get area" do
    	area = triangle.area
    	area.must_equal 0.5
  	end
end
#test for circle
describe Circle do 
	it "get area" do
    	area = circle.area
    	area.must_equal Math::PI*4
  	end
end

#test for scene
describe Scene do
	scene.add_shape(rectangle)
	scene.add_shape(circle)
	scene.add_shape(triangle)
	it "test if add the shapes into the scene" do
		scene.shape_count.must_equal 3
	end

	it "test if remove the shapes into the scene" do
		scene.remove_shape(rectangle)
		scene.remove_shape(circle)
		scene.remove_shape(triangle)
		scene.shape_count.must_equal 0
	end

end



