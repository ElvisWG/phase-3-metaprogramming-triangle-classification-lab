class Triangle
  # write code here

attr_accessor :x, :y, :z

def initialize(x, y, z)
  @x = x
  @y = y
  @z = z

  end

  def kind
    is_equal
   if x==y && y==z
    :equilateral
    
   elsif  x==y || y==z || x==z
    :isosceles
    
   else
    :scalene
    
   end
end

def sides_larger_than_0?
  [x, y, z].all?(& :positive?)
end

def triangle_inequality?
  x + y > z && x + z > y && y + z > x
end

def is_equal
  raise TriangleError unless  sides_larger_than_0? && triangle_inequality?     
end
class TriangleError < StandardError
    
end
end


